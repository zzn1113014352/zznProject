package com.dhcc.bussiness.inforSet;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InforSetAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(InforSetAction.class);
	InforSetDao dao = new InforSetDao();
	private String result;
	private String userid;
	private Integer take_mess;//接受消息提醒  
	private Integer user_mess;//接受用户消息提醒
	private Integer visit_mess;//用户访问提醒
	private Integer changes_house;//房源变动提醒
	private InforSetModel model;
	//修改状态
	public String updateInforSet() {
		userid = ActionContext.getContext().getSession().get("userid").toString();
		boolean b = dao.updateInforSet(take_mess, user_mess, visit_mess, changes_house, userid);
		if(b){
			result = "success";
		}
		return SUCCESS;
	}
	public String InforQueryById() {
		userid = ActionContext.getContext().getSession().get("userid").toString();
		model= dao.inforQueryById(userid);
		return SUCCESS;
	}
	
	public InforSetModel getModel() {
		return model;
	}
	public void setModel(InforSetModel model) {
		this.model = model;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
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