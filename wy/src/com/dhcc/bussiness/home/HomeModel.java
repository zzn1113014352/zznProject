package com.dhcc.bussiness.home;
//房间查询字段
public class HomeModel {
	private String floor;//楼层 ceng
	private String housetype;//房型 house_type
	private Integer id;//主键
	private String housenum;//房号
	private String toward;//特性
	private String housestate;//房间状态
	
	//order表里面的字段
	private String paytype;
	private String source;
	private String people;
	
	private String name;//user_all表里面的name
	
	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}

	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getHousetype() {
		return housetype;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	public String getHousenum() {
		return housenum;
	}
	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}
	public String getToward() {
		return toward;
	}
	public void setToward(String toward) {
		this.toward = toward;
	}
	public String getHousestate() {
		return housestate;
	}
	public void setHousestate(String housestate) {
		this.housestate = housestate;
	}
	
	
	
}
