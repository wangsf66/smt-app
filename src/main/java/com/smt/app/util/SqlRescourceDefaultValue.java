package com.smt.app.util;

import java.util.Date;

import com.douglei.orm.configuration.environment.mapping.SqlMappingParameterDefaultValueHandler;
import com.smt.parent.code.filters.token.TokenContext;
/**
 * 
 * @author wangShuFang
 */
public class SqlRescourceDefaultValue extends SqlMappingParameterDefaultValueHandler {

	public Object getDefaultValue(String value) {
		if("_userId".equals(value)) {
			return TokenContext.get().getUserId();
		}else if("_currentTime".equals(value)) {
			return new Date();
		}else if("_projectCode".equals(value)) {
			return TokenContext.get().getProjectCode();
		}else if("_tenantId".equals(value)) {
			return TokenContext.get().getTenantId();
		}
		return value;
	}
} 
