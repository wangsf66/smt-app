package com.smt.app.base.code.entity;

import java.util.Date;

/**
 * 
 * @author DougLei
 */
public abstract class BasicEntity extends BasicEntity4Id{
	private static final long serialVersionUID = -8621406703438857358L;
	
	protected String createUserId;// 创建人id
	protected Date createDate;// 创建时间
	protected String lastUpdateUserId;// 最后修改人id
	protected Date lastUpdateDate;// 最后修改时间
	protected String projectCode;// 项目id
	protected String tenantId;// 租户id
	
	public String getCreateUserId() {
		return createUserId;
	}
	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public String getLastUpdateUserId() {
		return lastUpdateUserId;
	}
	public void setLastUpdateUserId(String lastUpdateUserId) {
		this.lastUpdateUserId = lastUpdateUserId;
	}
	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}
	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public String getTenantId() {
		return tenantId;
	}
	public void setTenantId(String tenantId) {
		this.tenantId = tenantId;
	}
}
