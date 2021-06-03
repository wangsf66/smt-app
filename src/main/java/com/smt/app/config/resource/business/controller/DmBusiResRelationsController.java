package com.smt.app.config.resource.business.controller;
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
import com.smt.app.config.resource.business.entity.DmBusiModelRelation;
import com.smt.app.config.resource.business.service.DmCfgBusiModelResRelationsService;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;
/**
 * 
 * @author wangShuFang
 */
@RestController
@RequestMapping({"/busimodelresrelations"})
public class DmBusiResRelationsController extends BasicController {
	
	@Autowired
	private DmCfgBusiModelResRelationsService dmBusiRelationsService;
	
	@RequestMapping({"/insert"})
	public Response insert(@CommonParams(cls=DmBusiModelRelation.class)CommonParamsModel<DmBusiModelRelation> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
        	if(validate4Table(commonParamsModel.getList(),InsertValidateHandler.getSingleton())==DataValidationResult.SUCCESS) { 
        		dmBusiRelationsService.insertMany(commonParamsModel.getList());
    		}
        }
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}

	@RequestMapping({"/update"})
	public Response update(@CommonParams(cls=DmBusiModelRelation.class)CommonParamsModel<DmBusiModelRelation> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
        	if(validate4Table(commonParamsModel.getList(),UpdateValidateHandler.getInstance4UpdateNullValue())==DataValidationResult.SUCCESS) { 
        		dmBusiRelationsService.updateMany(commonParamsModel.getList());
    		}
        }
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public Response delete(HttpServletRequest request) {
		String ids = getDeleteIds(request);
		if(ids!=null) {
			dmBusiRelationsService.delete(ids);
		}
	    return ResponseContext.getAndRemove();
	}
	
	@RequestMapping(value="/query",method=RequestMethod.GET)
	public Response queryList(HttpServletRequest request) {
		String id = request.getParameter("id");
		if(id!=null) {
			dmBusiRelationsService.queryList(id);
		}
	    return ResponseContext.getAndRemove();
	}
}

