package com.smt.app.config.resource.business.entity;

import java.util.List;

import com.smt.app.base.code.entity.BasicEntity;
/**
 * 
 * @author wangShuFang
 */
@SuppressWarnings("serial")
public class DmBusiModelRelation extends BasicEntity{

	private String  refResourceKeyName;
	private String refBusiModelId;
	private String  parentId;
	private String refResourceId;
	private String  refResourceName;
	private String  idPropName="ID";
	private int refResourceType;
	private String  refParentResourcePropId;
	private int isCascadeDelete=1;
	private int orderCode;
	private String refDescName;
	private List<DmBusiModelRelation> childList;
	private List<DmSqlBusiStructure> sqlList;
	
	public String getRefDescName() {
		return refDescName;
	}
	public void setRefDescName(String refDescName) {
		this.refDescName = refDescName;
	}
	public List<DmSqlBusiStructure> getSqlList() {
		return sqlList;
	}
	public void setSqlList(List<DmSqlBusiStructure> sqlList) {
		this.sqlList = sqlList;
	}
	public String getRefResourceName() {
		return refResourceName;
	}
	public void setRefResourceName(String refResourceName) {
		this.refResourceName = refResourceName;
	}
	public List<DmBusiModelRelation> getChildList() {
		return childList;
	}
	public void setChildList(List<DmBusiModelRelation> childList) {
		this.childList = childList;
	}
	public String getRefResourceKeyName() {
		return refResourceKeyName;
	}
	public void setRefResourceKeyName(String refResourceKeyName) {
		this.refResourceKeyName = refResourceKeyName;
	}
	public String getRefBusiModelId() {
		return refBusiModelId;
	}
	public void setRefBusiModelId(String refBusiModelId) {
		this.refBusiModelId = refBusiModelId;
	}
	public String  getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getRefResourceId() {
		return refResourceId;
	}
	public void setRefResourceId(String refResourceId) {
		this.refResourceId = refResourceId;
	}
	public String getIdPropName() {
		return idPropName;
	}
	public void setIdPropName(String idPropName) {
		this.idPropName = idPropName;
	}
	public Integer getRefResourceType() {
		return refResourceType;
	}
	public void setRefResourceType(Integer refResourceType) {
		this.refResourceType = refResourceType;
	}
	public String getRefParentResourcePropId() {
		return refParentResourcePropId;
	}
	public void setRefParentResourcePropId(String refParentResourcePropId) {
		this.refParentResourcePropId = refParentResourcePropId;
	}
	public Integer getIsCascadeDelete() {
		return isCascadeDelete;
	}
	public void setIsCascadeDelete(Integer isCascadeDelete) {
		this.isCascadeDelete = isCascadeDelete;
	}
	public Integer getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(Integer orderCode) {
		this.orderCode = orderCode;
	}
}
