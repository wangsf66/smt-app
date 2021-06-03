package com.smt.app.config.resource.general.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.douglei.orm.sessionfactory.validator.table.handler.InsertValidateHandler;
import com.douglei.orm.sessionfactory.validator.table.handler.UpdateValidateHandler;
import com.smt.app.base.argument.CommonParams;
import com.smt.app.base.argument.CommonParamsModel;
import com.smt.app.base.code.controller.BasicController;
import com.smt.app.base.code.result.DataValidationResult;
import com.smt.app.config.resource.general.entity.DmResource;
import com.smt.app.config.resource.general.entity.DmResourceMapping;
import com.smt.app.config.resource.general.service.DmResourceService;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;


@RestController
@RequestMapping("/resource")
public class DmResourceController extends BasicController{
	
	@Autowired
	private DmResourceService resourceService;
	
	@RequestMapping(value = "/createModel", method = RequestMethod.POST)
	public Response createModel(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null&&commonParamsModel.getList().size()>1) {
			ResponseContext.get().addValidation(commonParamsModel.getList(), "id", "不可以进行批量建模", "smartone.resource.createModel.noBatch");
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(),true);
        }else {
        	if(validateByValidator(commonParamsModel.getList().get(0))==DataValidationResult.SUCCESS) {                                             
        		resourceService.createModel(commonParamsModel.getList().get(0));
        	}
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }
	}
	
	@RequestMapping(value = "/cancelModel", method = RequestMethod.POST)
	public Response cancelModel(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null&&commonParamsModel.getList().size()>1) {
			ResponseContext.get().addValidation(commonParamsModel.getList(), "id", "不可以进行批量建模", "smartone.resource.createModel.noBatch");
			return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(),true);
        }else {
        	if(validateByValidator(commonParamsModel.getList().get(0))==DataValidationResult.SUCCESS) {                                             
        		resourceService.cancelModel(commonParamsModel.getList().get(0));
        	}
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }
	}
	
	@RequestMapping({"/update","/batchUpdate"})
	public Response update(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
	       	if(validate4Table(commonParamsModel.getList(),UpdateValidateHandler.getInstance4UpdateNullValue())==DataValidationResult.SUCCESS) { 
	       		resourceService.updateMany(commonParamsModel.getList());
	   		} 
       }
	   return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}
	
	@RequestMapping({"/insert","/batchInsert"})
	public Response insert(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
       	if(validate4Table(commonParamsModel.getList(), InsertValidateHandler.getSingleton())==DataValidationResult.SUCCESS) { 
       		resourceService.insertMany(commonParamsModel.getList());
   		}
       }
	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}

	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public Response delete(HttpServletRequest request) {
		String ids = getDeleteIds(request);
		if(ids!=null) {
			resourceService.delete(ids);
		}
	    return ResponseContext.getAndRemove();
	}
	
	//修改数据库数据接口
	@RequestMapping(value = "/createModel", method = RequestMethod.GET)
	public Response createModel() {
		resourceService.createModel();
    	return ResponseContext.getAndRemove(true, true);
	}
	
	
	@RequestMapping(value = "/getXmlById", method = RequestMethod.GET) 
	public Response getXmlById(HttpServletRequest request) {
		String resourceId = request.getParameter("resourceId");
		resourceService.getXmlById(resourceId);
    	return ResponseContext.getAndRemove(true, true);
	}
	
	@RequestMapping(value = "/createModelByXml", method = RequestMethod.POST)
	public Response createModelByXml(@CommonParams(cls=DmResourceMapping.class)CommonParamsModel<DmResourceMapping> commonParamsModel) {
		resourceService.createModelByXml(commonParamsModel.getList().get(0));
    	return ResponseContext.getAndRemove(true, true);
	}
	
	@RequestMapping(value = "/text", method = RequestMethod.POST)
	public Response createModelByXml() {
		
		String str = null;
		if(str==null) {
			throw new NullPointerException();
		}
    	return ResponseContext.getAndRemove();
	}
}

