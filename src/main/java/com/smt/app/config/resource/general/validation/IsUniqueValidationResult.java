package com.smt.app.config.resource.general.validation;

import com.douglei.orm.mapping.validator.ValidateFailResult;

public class IsUniqueValidationResult extends ValidateFailResult{
	
	
	
	public IsUniqueValidationResult(String fieldName, String originMessage, String code, Object... params) {
		super(fieldName, originMessage, code, params);
		// TODO Auto-generated constructor stub
	}

	
}
