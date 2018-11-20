package com.dhcc.bussiness.User;

public class UserModel {
    private String id;//
    private String phone;//手机号
    private String password;//密码
    private String createtime;//注册时间(存放的是毫秒值)
    private String wx;//微信账号
    private String rid;//角色id
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getWx() {
		return wx;
	}
	public void setWx(String wx) {
		this.wx = wx;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
}