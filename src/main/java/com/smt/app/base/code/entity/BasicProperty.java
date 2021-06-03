package com.smt.app.base.code.entity;

import java.util.Date;

import com.smt.parent.code.filters.token.TokenContext;

/**
 * 基础属性
 * @author DougLei
 */
public enum BasicProperty {
	NONE,
	
	CREATE_USER_ID("createUserId"){
		@Override
		public Object getValue() {
			return  TokenContext.get().getUserId();
		}
	},
	CREATE_DATE("createDate"){
		@Override
		public Object getValue() {
			return new Date();
		}
	},
	
	
	LAST_UPDATE_USER_ID("lastUpdateUserId"){
		@Override
		public Object getValue() {
			return TokenContext.get().getUserId();
		}
	},
	LAST_UPDATE_DATE("lastUpdateDate"){
		@Override
		public Object getValue() {
			return new Date();
		}
	},
	
	
	PROJECT_CODE("projectCode"){
		@Override
		public Object getValue() {
			return TokenContext.get().getProjectCode();
		}
	},
	
	
	TENANT_ID("tenantId"){
		@Override
		public Object getValue() {
			return TokenContext.get().getTenantId();
		}
	};
	
	private String propertyName;
	private BasicProperty() {
	}
	private BasicProperty(String propertyName) {
		this.propertyName = propertyName;
	}
	public String getPropertyName() {
		return propertyName;
	}
	public String getColumnName() {
		return name();
	}
	public Object getValue() {
		return null;
	}
	
	/**
	 * 保存时使用的所有基础属性
	 */
	public static final BasicProperty[] allPropertiesOnSave = {
			CREATE_USER_ID, CREATE_DATE,
			LAST_UPDATE_USER_ID, LAST_UPDATE_DATE,
			PROJECT_CODE, TENANT_ID
	};
	
	/**
	 * 修改时使用的所有基础属性
	 */
	public final static BasicProperty[] allPropertiesOnUpdate = { LAST_UPDATE_USER_ID, LAST_UPDATE_DATE };
}
