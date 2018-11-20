package com.dhcc.bussiness.version;

public class VersionModel {
	private String id;
	private String version_num;
	private String version_remark;
	private String createtime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getVersion_num() {
		return version_num;
	}
	public void setVersion_num(String version_num) {
		this.version_num = version_num;
	}
	public String getVersion_remark() {
		return version_remark;
	}
	public void setVersion_remark(String version_remark) {
		this.version_remark = version_remark;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
}