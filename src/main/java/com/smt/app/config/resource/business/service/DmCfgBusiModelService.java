package com.smt.app.config.resource.business.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.douglei.orm.context.SessionContext;
import com.douglei.orm.context.SessionFactoryContainer;
import com.douglei.orm.context.Transaction;
import com.douglei.orm.context.TransactionComponent;
import com.douglei.orm.mapping.handler.MappingHandleException;
import com.douglei.orm.mapping.handler.MappingHandler;
import com.douglei.orm.mapping.handler.entity.AddOrCoverMappingEntity;
import com.douglei.orm.mapping.handler.entity.DeleteMappingEntity;
import com.smt.app.base.code.service.BasicService;
import com.smt.app.config.resource.business.entity.DmBusiModelRelation;
import com.smt.app.config.resource.business.entity.DmSqlBusiStructure;
import com.smt.app.config.resource.business.parse.ExMappingTypeConstants;
import com.smt.app.config.resource.general.entity.DmResource;
import com.smt.app.config.resource.general.entity.DmResourceMapping;
import com.smt.app.config.resource.general.entity.Resource;
import com.smt.app.config.resource.general.service.ResourceContentService;
import com.smt.app.config.util.ResourceTypeUtil;
import com.smt.app.config.util.StrUtil;
import com.smt.parent.code.response.ResponseContext;
/**
 * 
 * @author wangShuFang
 */
@TransactionComponent
public class DmCfgBusiModelService extends BasicService {
	
	public static final String STATE = "$state$";
	public static final String DELETE = "delete";
	public static final String UPDATE = "update";
	public static final String INSERT = "insert";
	public static final String SELE_DELE = "sele_dele";
	public static final String SELECT = "select";
	
	
	@Autowired
	private ResourceContentService ResourceContentService;


	@Transaction
	public void insertMany(List<DmResource> list) {
		for(DmResource dmResource:list) {
			if (doValidate(dmResource)) {
			   dmResource.setResourceType(ResourceTypeUtil.RESOURCE_TYPE_BUSIMODEL);
			}
		}
		tableSessionSave(list);
    }
	
	@Transaction
	public void updateMany(List<DmResource> list) {
		for(DmResource dmResource:list) {
			dmResource.setResourceType(ResourceTypeUtil.RESOURCE_TYPE_BUSIMODEL);
			updateCfgBusiModel(dmResource);
		}
	}
	
	public void updateCfgBusiModel(DmResource dmResource){
		DmResource oldDmResource = SessionContext.getTableSession().uniqueQuery(DmResource.class,"select * from DM_RESOURCE WHERE ID='"+dmResource.getId()+"'");
		dmResource.setIsEverBuildModel(oldDmResource.getIsEverBuildModel());
		if(oldDmResource.getIsBuildModel()==1) {
			if(oldDmResource!=null) {
				if(oldDmResource.getResourceName().equals(dmResource.getResourceName())) {
					dmResource.setIsBuildModel(oldDmResource.getIsBuildModel());
					dmResource.setIsEverBuildModel(oldDmResource.getIsEverBuildModel());
					tableSessionUpdate(dmResource);
				}else {
					if(oldDmResource.getIsEverBuildModel()==1&&oldDmResource.getOldResourceName()==null) {
						dmResource.setOldResourceName(oldDmResource.getResourceName());
					}
			    	if(doValidate(dmResource)) {
			    		dmResource.setIsBuildModel(0);
			    		tableSessionUpdate(dmResource);
					}
			    	try {
						cancelmodel(oldDmResource);
					} catch (MappingHandleException e) {
						e.printStackTrace();
					}
				 }
			 }
		}else {
			if(doValidate(dmResource)) {
	    		dmResource.setIsBuildModel(0);
	    		tableSessionUpdate(dmResource);
			}	
		}
    }

	@Transaction
	public void delete(String ids) {
		List<DmResource> list= SessionContext.getSqlSession().query(DmResource.class,
				"select * from DM_RESOURCE where ID in (" +StrUtil.stringToSql(ids)+ ")");
		List<DmBusiModelRelation> relationList = null;
		List<DmSqlBusiStructure> structureList = null;
		if(list!=null&&list.size()>0) {
			for (DmResource dmResource : list) {
				if (dmResource.getIsBuildModel() == 1) {
					ResponseContext.get().addValidation(dmResource, "id", "该业务对象已建模，请取消建模后再做删除操作", "smartone.dynamic.business.CancelModel");
				    return;
				}
				relationList = SessionContext.getSqlSession().query(DmBusiModelRelation.class,"select * from DM_BUSI_MODEL_RELATION where REF_BUSI_MODEL_ID = '" + dmResource.getId() + "'");
				if(relationList!=null&&relationList.size()>0) {
					for(DmBusiModelRelation relation:relationList) {
						if(relation.getRefResourceType()<=ResourceTypeUtil.RESOURCE_TYPE_SQL||relation.getRefResourceType()>ResourceTypeUtil.RESOURCE_TYPE_TABLE) {
							structureList = SessionContext.getSqlSession().query(DmSqlBusiStructure.class,"select * from DM_SQL_BUSI_STRUCTURE where PARENT_ID = '"+relation.getId()+"'");   
						       if(structureList!=null&&structureList.size()>0) {
						    	   for(DmSqlBusiStructure structure:structureList) {
						    		   SessionContext.getSqlSession().executeUpdate("delete from DM_SQL_BUSI_STRUCTURE where ID='"+structure.getId()+"'");
						    	   }
						       }
						   }
						SessionContext.getSqlSession().executeUpdate("delete from DM_BUSI_MODEL_RELATION where ID='"+relation.getId()+"'");
					}
				}
				SessionContext.getSqlSession().executeUpdate("delete from DM_RESOURCE where ID='"+dmResource.getId()+"'");
			}
		}
		Map<String,Object> idsMap = new HashMap<String,Object>();
		idsMap.put("ids", ids);
		ResponseContext.get().addData(idsMap);  
	}
	
	


	@Transaction
	public void createBusiModel(DmResource dmResource) {
		createModel(dmResource);
	}
	
	@Transaction
	public void createModel() {
		List<DmResource> list = SessionContext.getTableSession().query(DmResource.class,"select * from DM_RESOURCE where IS_BUILD_MODEL = 1 and RESOURCE_TYPE = 30 ");
		for(DmResource dmResource:list) {
	    	createModel(dmResource);
	    }
	}
	
	public void createModel(DmResource dmResource) {
		if (dmResource.getIsBuildModel() == 1) {
			ResponseContext.get().addValidation(dmResource.getId(), "id", "该业务资源已存在，不可以重复建模","smartone.dynamic.business.createModel.exists");
		    return;
		}
		MappingHandler handler= SessionFactoryContainer.getSingleton().get().getMappingHandler();
		List<Resource> resourceList = ResourceContentService.getResourceContent(dmResource.getId());
		String busiModelXml = resourceList.get(0).getContent();
		try {
			SessionContext.getSqlSession().executeUpdate("DELETE FROM DM_RESOURCE_MAPPING WHERE RESOURCE_ID='"+dmResource.getId()+"'");
			handler.execute(new AddOrCoverMappingEntity(busiModelXml, ExMappingTypeConstants.BUSIMODEL).enableProperty());
			DmResourceMapping busiModelMaping = new DmResourceMapping(dmResource.getId(),resourceList.get(0).getName(),busiModelXml,30);
			SessionContext.getTableSession().save(setBasicPropertyValues(busiModelMaping, true));      
			SessionContext.getSqlSession().executeUpdate("update DM_RESOURCE SET OLD_RESOURCE_NAME = null,IS_BUILD_MODEL=1,IS_EVER_BUILD_MODEL=1  where ID='" + dmResource.getId()+ "'");
			Map<String, Object> idsMap = new HashMap<String, Object>();
			idsMap.put("id", dmResource.getId());
			idsMap.put("msg", "建模成功");
			ResponseContext.get().addData(idsMap);
		} catch (MappingHandleException e) {
			e.printStackTrace();
			ResponseContext.get().addError(dmResource, e);
			SessionContext.executeRollback();
		}
	}
	
	@Transaction
	public void cancelBusiModel(DmResource dmResource) {
		cancelModel(dmResource);
	}
	
	private void cancelModel(DmResource dmResource) {
		DmResource cbm = SessionContext.getTableSession().uniqueQuery(DmResource.class,"select * from DM_RESOURCE WHERE ID='"+dmResource.getId()+"'");
	    if(cbm.getIsBuildModel()==0) {
	    	ResponseContext.get().addValidation(dmResource, "id", "该业务未建模，不能进行取消建模操作","smartone.dynamic.business.noModel");
	        return;
	    }
		try {
			cancelmodel(cbm);
			cbm.setIsBuildModel(0);
			SessionContext.getSqlSession().executeUpdate("DELETE FROM DM_RESOURCE_MAPPING WHERE RESOURCE_ID='"+dmResource.getId()+"'");
			SessionContext.getTableSession().update(setBasicPropertyValues(cbm, false));   
			Map<String,Object> idsMap = new HashMap<String,Object>();
	    	idsMap.put("id", cbm.getId());
			idsMap.put("msg", "取消建模成功");
			ResponseContext.get().addData(idsMap);
		} catch (MappingHandleException e) {
			e.printStackTrace();
			SessionContext.executeRollback();
		}
	}
	
	public  void cancelmodel(DmResource dmResource) throws MappingHandleException{
		MappingHandler handler= SessionFactoryContainer.getSingleton().get().getMappingHandler();
		handler.execute(new DeleteMappingEntity(dmResource.getResourceName()));
	}
	
	public boolean doValidate(DmResource dmResource) {
		List<DmResource> obj = null;
		if(dmResource.getId()!=null) {
			obj = (List<DmResource>) SessionContext.getSqlSession().query(DmResource.class,
					"select * from DM_RESOURCE WHERE RESOURCE_NAME='" + dmResource.getResourceName().toUpperCase() + "' and ID!='"+dmResource.getId()+"'");
		}else {
			obj = (List<DmResource>)SessionContext.getSqlSession().query(DmResource.class,
					"select * from DM_DM_RESOURCE WHERE RESOURCE_NAME='" + dmResource.getResourceName().toUpperCase() + "'");
		}
		if (obj != null && obj.size() > 0) {
			ResponseContext.get().addValidation(null, null, "资源名不能重复", "no i18n code");
			return false;
		}
		return true;
	}
}

