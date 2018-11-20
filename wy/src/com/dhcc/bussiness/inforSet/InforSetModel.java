package com.dhcc.bussiness.inforSet;

public class InforSetModel {
	private Integer id;
	private String userid;
	//0是开  1是关
	private Integer take_mess;//接受消息提醒  
	private Integer user_mess;//接受用户消息提醒
	private Integer visit_mess;//用户访问提醒
	private Integer changes_house;//房源变动提醒
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getTake_mess() {
		return take_mess;
	}
	public void setTake_mess(Integer take_mess) {
		this.take_mess = take_mess;
	}
	public Integer getUser_mess() {
		return user_mess;
	}
	public void setUser_mess(Integer user_mess) {
		this.user_mess = user_mess;
	}
	public Integer getVisit_mess() {
		return visit_mess;
	}
	public void setVisit_mess(Integer visit_mess) {
		this.visit_mess = visit_mess;
	}
	public Integer getChanges_house() {
		return changes_house;
	}
	public void setChanges_house(Integer changes_house) {
		this.changes_house = changes_house;
	}
	
	
	
}
