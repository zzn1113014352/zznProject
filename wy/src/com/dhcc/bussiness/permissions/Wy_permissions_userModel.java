package com.dhcc.bussiness.permissions;

public class Wy_permissions_userModel {
	private String id;//id
	private String head_img;//头像
	private String nickname;//昵称
	private String status;//状态(已绑定 未绑定)
	private String authorized_t;//授权时长
	private String bd_userid;//绑定的用户id
	private String userid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHead_img() {
		return head_img;
	}
	public void setHead_img(String head_img) {
		this.head_img = head_img;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAuthorized_t() {
		return authorized_t;
	}
	public void setAuthorized_t(String authorized_t) {
		this.authorized_t = authorized_t;
	}
	public static void main(String[] args) {
		System.out.println(System.currentTimeMillis());
	}
	public String getBd_userid() {
		return bd_userid;
	}
	public void setBd_userid(String bd_userid) {
		this.bd_userid = bd_userid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}