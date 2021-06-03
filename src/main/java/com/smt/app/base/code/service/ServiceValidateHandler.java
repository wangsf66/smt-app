package com.smt.app.base.code.service;

import java.util.List;

import com.douglei.orm.context.SessionContext;
import com.douglei.orm.mapping.validator.ValidateFailResult;
import com.smt.app.base.code.result.DataValidationResult;
import com.smt.parent.code.filters.token.TokenContext;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;

/**
 * 
 * @author DougLei
 */
@SuppressWarnings({"rawtypes", "unchecked"})
public abstract class ServiceValidateHandler {
	
	/**
	 * 使用验证器验证数据
	 * 返回单条数据的验证结果, 将验证未通过的数据加入到响应体 {@link Response} 的 validation 属性集合中
	 * @param data
	 * @param validators
	 * @return
	 */
	protected DataValidationResult validateByValidator(Object data, ServiceValidator... validators) {
		if(validators.length > 0) {
			ValidateFailResult result = null;
			for (ServiceValidator validator : validators) {
				if((result = validator.validate(-1, data, SessionContext.getSession(),TokenContext.get().getProjectCode(), TokenContext.get().getTenantId())) != null) {
					ResponseContext.get().addValidation(data, null, null, null, result);
					return DataValidationResult.FAILURE;
				}
			}
		}
		return DataValidationResult.SUCCESS;
	}
	
	/**
	 * 使用验证器验证数据
	 * 返回批量数据的验证结果, 将验证未通过的数据加入到响应体 {@link Response} 的 validation 属性集合中
	 * @param datas
	 * @param validators
	 * @return
	 */
	protected DataValidationResult validateByValidator(List<? extends Object> datas, ServiceValidator... validators) {
		if(validators.length > 0) {
			ValidateFailResult result = null;
			for(int i=datas.size()-1;i>-1;i--) {
				for (ServiceValidator validator : validators) {
					if((result = validator.validate(i, datas.get(i), SessionContext.getSession(),TokenContext.get().getProjectCode(), TokenContext.get().getTenantId())) != null) {
						ResponseContext.get().addValidation(datas.remove(i), null, null, null, result);
						break;
					}
				}
			}
		}
		return datas.isEmpty()?DataValidationResult.FAILURE:DataValidationResult.SUCCESS;
	}
}
