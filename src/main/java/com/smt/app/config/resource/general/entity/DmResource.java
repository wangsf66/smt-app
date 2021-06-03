package com.smt.app.config.resource.general.entity;

import com.smt.app.base.code.entity.BasicEntity;
/**
 * 
 * @author wangShuFang
 */
@SuppressWarnings("serial")
public class DmResource extends BasicEntity{
	 private String descName;
     private String resourceName;
     private String oldResourceName;
     private int createModel = 1;
     private int isBuildModel = 0; 
     private String content;
     //0 table资源  1 sql资源
     private int resourceType;
     private String funcCode;
     
     private int supportDelete = 0;
 	
 	 private int supportCover = 0;
 	 
 	 private boolean isSelectSql = false;
 	 
 	 
 	 private int isEverBuildModel;
 	 
 	
	public int getIsEverBuildModel() {
		return isEverBuildModel;
	}
	public void setIsEverBuildModel(int isEverBuildModel) {
		this.isEverBuildModel = isEverBuildModel;
	}
	private String serviceInfoId;
 	 
 	
	public String getServiceInfoId() {
		return serviceInfoId;
	}
	public void setServiceInfoId(String serviceInfoId) {
		this.serviceInfoId = serviceInfoId;
	}
	public boolean isSelectSql() {
		return isSelectSql;
	}
	public void setSelectSql(boolean isSelectSql) {
		this.isSelectSql = isSelectSql;
	}
	
	public String getFuncCode() {
		return funcCode;
	}
	public void setFuncCode(String funcCode) {
		this.funcCode = funcCode;
	}
	public String getDescName() {
		return descName;
	 }
	public void setDescName(String descName) {
		this.descName = descName;
	}
	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public String getOldResourceName() {
		return oldResourceName;
	}
	public void setOldResourceName(String oldResourceName) {
		this.oldResourceName = oldResourceName;
	}
	public int getCreateModel() {
		return createModel;
	}
	public void setCreateModel(int createModel) {
		this.createModel = createModel;
	}
	public int getIsBuildModel() {
		return isBuildModel;
	}
	public void setIsBuildModel(int isBuildModel) {
		this.isBuildModel = isBuildModel;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public void setResourceType(int resourceType) {
		this.resourceType = resourceType;
	}
	
	public int getSupportDelete() {
		return supportDelete;
	}
	public int getResourceType() {
		return resourceType;
	}
	public void setSupportDelete(int supportDelete) {
		this.supportDelete = supportDelete;
	}
	public int getSupportCover() {
		return supportCover;
	}
	public void setSupportCover(int supportCover) {
		this.supportCover = supportCover;
	}
}
