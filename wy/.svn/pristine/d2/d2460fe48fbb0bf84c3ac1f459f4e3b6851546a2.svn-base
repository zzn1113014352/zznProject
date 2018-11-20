package com.dhcc.bussiness.version;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class VersionAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private List<VersionModel> list;
	private VersionDao dao = new VersionDao();
	public List<VersionModel> getList() {
		return list;
	}
	public void setList(List<VersionModel> list) {
		this.list = list;
	}
	
	//获取版本
	public String Versionnum(){
		list = dao.Versionnum();
		return SUCCESS;
	}
}
