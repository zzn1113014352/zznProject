package com.dhcc.bussiness.notice;

public class NoticeModel {
	private Integer id;
	private String type;//公告类型
	private String content;//内容
	private String addtime;//发布时间
	private Integer state;//状态0代表未读1代表已读
	private String id_s;//序号
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getId_s() {
		return id_s;
	}
	public void setId_s(String id_s) {
		this.id_s = id_s;
	}
}
