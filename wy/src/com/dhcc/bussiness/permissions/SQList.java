package com.dhcc.bussiness.permissions;

public class SQList {
	private String id;
	private String userid;//
	private String menu_type;//菜单类型
	private String cxquanxian;//查询权限
	private String czquanxian;//操作权限
	private String bd_userid;//绑定用户ID
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getMenu_type() {
		return menu_type;
	}
	public void setMenu_type(String menu_type) {
		this.menu_type = menu_type;
	}
	public String getCxquanxian() {
		return cxquanxian;
	}
	public void setCxquanxian(String cxquanxian) {
		this.cxquanxian = cxquanxian;
	}
	public String getCzquanxian() {
		return czquanxian;
	}
	public void setCzquanxian(String czquanxian) {
		this.czquanxian = czquanxian;
	}
	public String getBd_userid() {
		return bd_userid;
	}
	public void setBd_userid(String bd_userid) {
		this.bd_userid = bd_userid;
	}
}
