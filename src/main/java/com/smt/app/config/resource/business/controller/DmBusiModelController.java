package com.smt.app.config.resource.business.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.douglei.orm.mapping.validator.ValidateFailResult;
import com.douglei.orm.sessionfactory.validator.table.handler.InsertValidateHandler;
import com.douglei.orm.sessionfactory.validator.table.handler.UpdateValidateHandler;
import com.douglei.tools.StringUtil;
import com.smt.app.base.argument.CommonParams;
import com.smt.app.base.argument.CommonParamsModel;
import com.smt.app.base.code.controller.BasicController;
import com.smt.app.base.code.controller.ControllerValidator;
import com.smt.app.base.code.result.DataValidationResult;
import com.smt.app.config.resource.business.service.DmCfgBusiModelService;
import com.smt.app.config.resource.general.entity.DmResource;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;

/**
 * 
 * @author wangShuFang
 */
@RestController
@RequestMapping({"/busimodel"})
public class DmBusiModelController extends BasicController {
	
	@Autowired
	private DmCfgBusiModelService dmCfgBusiModelService;
	
	@RequestMapping({"/insert"})
	public Response insert(
			@CommonParams(cls = DmResource.class) CommonParamsModel<DmResource> commonParamsModel) {
		if (commonParamsModel.getList() != null) {
			if (validate4Table(commonParamsModel.getList(),InsertValidateHandler.getSingleton()) == DataValidationResult.SUCCESS) {
				dmCfgBusiModelService.insertMany(commonParamsModel.getList());
			}
		}
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}
	
	@RequestMapping({"/update"})
	public Response update(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList() !=null) {
        	if(validate4Table(commonParamsModel.getList(),UpdateValidateHandler.getInstance4UpdateNullValue())==DataValidationResult.SUCCESS) { 
        		dmCfgBusiModelService.updateMany(commonParamsModel.getList());
    		}
        }
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public Response delete(HttpServletRequest request) {
		String ids = getDeleteIds(request);
		if(ids!=null) {
			dmCfgBusiModelService.delete(ids);
		}
	    return ResponseContext.getAndRemove();
	}
	
	/**
	 * 发布资源
	 * @return 
	 * @throws IOException 
	 */
	@RequestMapping(value = "/createModel", method = RequestMethod.POST)
	public Response createModel(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null&&commonParamsModel.getList().size()>1) {
			ResponseContext.get().addValidation(commonParamsModel.getList(), "id", "不可以进行批量建模", "smartone.resource.createModel.noBatch");
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }else {
        	if(validateByValidator(commonParamsModel.getList().get(0))==DataValidationResult.SUCCESS) {                                             
        		dmCfgBusiModelService.createBusiModel(commonParamsModel.getList().get(0));
        	}
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }
	}
	
	@RequestMapping(value = "/createModel", method = RequestMethod.GET)
	public Response createModel() {
		dmCfgBusiModelService.createModel();
    	return ResponseContext.getAndRemove(true, true);
	}
	
	/**
	 * 取消发布资源
	 * @return 
	 * @throws IOException 
	 */
	@RequestMapping(value = "/cancelModel", method = RequestMethod.GET)
	public Response cancelModel(@CommonParams(cls=DmResource.class)CommonParamsModel<DmResource> commonParamsModel) {
		if(commonParamsModel.getList()!=null&&commonParamsModel.getList().size()>1) {
			ResponseContext.get().addValidation(commonParamsModel.getList(), "id", "不可以进行批量建模", "smartone.resource.createModel.noBatch");
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }else {
        	if(validateByValidator(commonParamsModel.getList().get(0))==DataValidationResult.SUCCESS) {                                             
        		dmCfgBusiModelService.cancelBusiModel(commonParamsModel.getList().get(0));
        	}
        	return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
        }
	}
}

class IdNotNullValidator implements ControllerValidator<DmResource>{

	@Override
	public ValidateFailResult validate(int arg0, DmResource validateData, List<DmResource> list) {
		if(StringUtil.isEmpty(validateData.getId())) {
			return new ValidateFailResult("id", "不能为空", "smartone.table.createModel.idIsNotNull");
		}
		return null;
	}
}
