package com.smt.app.config.resource.general.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.douglei.orm.sessionfactory.validator.table.handler.UpdateValidateHandler;
import com.smt.app.base.argument.CommonParams;
import com.smt.app.base.argument.CommonParamsModel;
import com.smt.app.base.code.controller.BasicController;
import com.smt.app.base.code.result.DataValidationResult;
import com.smt.app.config.resource.general.entity.DmResourceParam;
import com.smt.app.config.resource.general.service.DmResourceParamsService;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;



@RestController
@RequestMapping("/column")
public class DmResourceParamsController extends BasicController  {
	
	@Autowired
	private DmResourceParamsService paramsService;
	
	@RequestMapping({"/update"})
	public Response update(@CommonParams(cls=DmResourceParam.class)CommonParamsModel<DmResourceParam> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
       	if(validate4Table(commonParamsModel.getList(),UpdateValidateHandler.getInstance4UpdateNullValue())==DataValidationResult.SUCCESS) { 
       		paramsService.updateMany(commonParamsModel.getList());
   		 } 
       }
	   return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(),true);
	}
	
	@RequestMapping({"/insert"})
	public Response save(@CommonParams(cls=DmResourceParam.class)CommonParamsModel<DmResourceParam> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
      	if(validate4Table(commonParamsModel.getList(),UpdateValidateHandler.getInstance4UpdateNullValue())==DataValidationResult.SUCCESS) { 
      		paramsService.insertMany(commonParamsModel.getList());
  		 } 
      }
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(),true);
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public Response delete(HttpServletRequest request) {
		String ids = getDeleteIds(request);
		if(ids!=null) {
			paramsService.delete(ids);
		}
	    return ResponseContext.getAndRemove();
	}
	
	@RequestMapping(value="/queryParamByResourceId",method=RequestMethod.GET)
	public Response queryParamByResourceId(HttpServletRequest request) {
		String resourceId =request.getParameter("resourceId");
		paramsService.queryParamByResourceId(resourceId);
	    return ResponseContext.getAndRemove(true, true);
	}
}
