package com.dhcc.bussiness.order;

public class OrderModel {
	private Integer id;
	private String house;
	private String source;
	private String start;
	private String stop;
	private String name;
	private String phone;
	private String people;
	private String money;
	private Integer paytype;
	private Integer checkstate;
	private String housenum;
	
//------------------------------------------------------------
	private String order_id;	//订单编码   非空项
	private String oauth_code;	//授权码
	private String net_house_id;	//网约房编码
	private String orders_date;	//下单时间yyyyMMddHHmmss
	private String reside_date;	//预定入住日期yyyyMMddHHmmss
	private String reside_retreat_date;	//拟退房日期yyyyMMddHHmmss
	private String update_date;	//更新时间yyyyMMddHHmmss
	private String reserve_phone;//预订人手机号
	private String states;//入住状态
	private String reserve_name;//姓名
	private String reserve_id_type;//证件类型
	private String reserve_id_num;//证件号码
	
	public String getReserve_name() {
		return reserve_name;
	}
	public void setReserve_name(String reserve_name) {
		this.reserve_name = reserve_name;
	}
	public String getReserve_id_type() {
		return reserve_id_type;
	}
	public void setReserve_id_type(String reserve_id_type) {
		this.reserve_id_type = reserve_id_type;
	}
	public String getReserve_id_num() {
		return reserve_id_num;
	}
	public void setReserve_id_num(String reserve_id_num) {
		this.reserve_id_num = reserve_id_num;
	}
	public String getStates() {
		return states;
	}
	public void setStates(String states) {
		this.states = states;
	}
	public String getReserve_phone() {
		return reserve_phone;
	}
	public void setReserve_phone(String reserve_phone) {
		this.reserve_phone = reserve_phone;
	}
	public String getHousenum() {
		return housenum;
	}
	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getOauth_code() {
		return oauth_code;
	}
	public void setOauth_code(String oauth_code) {
		this.oauth_code = oauth_code;
	}
	public String getNet_house_id() {
		return net_house_id;
	}
	public void setNet_house_id(String net_house_id) {
		this.net_house_id = net_house_id;
	}
	public String getOrders_date() {
		return orders_date;
	}
	public void setOrders_date(String orders_date) {
		this.orders_date = orders_date;
	}
	public String getReside_date() {
		return reside_date;
	}
	public void setReside_date(String reside_date) {
		this.reside_date = reside_date;
	}
	public String getReside_retreat_date() {
		return reside_retreat_date;
	}
	public void setReside_retreat_date(String reside_retreat_date) {
		this.reside_retreat_date = reside_retreat_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public Integer getCheckstate() {
		return checkstate;
	}
	public void setCheckstate(Integer checkstate) {
		this.checkstate = checkstate;
	}
	public Integer getPaytype() {
		return paytype;
	}
	public void setPaytype(Integer paytype) {
		this.paytype = paytype;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getStop() {
		return stop;
	}
	public void setStop(String stop) {
		this.stop = stop;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public OrderModel() {
		super();
	}
	
	
	
}
