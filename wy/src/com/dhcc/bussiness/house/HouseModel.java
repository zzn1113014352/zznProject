package com.dhcc.bussiness.house;

public class HouseModel {
	private String  id;
	private String house;
	private String source;
	private String groups;
	private String location;
	private String img;
	private String housenum;
	private String housetype;
	private String toward;
	private String decoration;
	private String floor;
	private String rent;
	private String title;
	private String describes;
	private String housestate;
	private String agreement;
	private Integer shi;
	private Integer ting;
	private Integer wei;
	private Integer ceng;
	private Integer cengs;
	private String danyuan;
	private Integer house_check;	//审核
	
//------------------------------------------------------------------------------------------
	private String net_house_id;	//网约房编码
	private String operate_id;	//经营者编码
	private String net_house_name;	//网约房名称
	private String start_date;	//启用日期
	private String stop_date;	//停用日期
	private String update_date;	//更新时间
	private String register_date;	//登记时间
	private String use_state;	//使用状态
	private String house_property_name;	//房屋产权人姓名
	private String house_property_phone;	//房屋产权人联系电话
	private String house_property_id_type;	//房屋产权人证件种类
	private String house_property_id_num;	//房屋产权人证件号码
	private Integer house_property_type;	//房屋产权人类型	int	1.自然人   2.企业
	private Integer house_rentout_type;	//出租类型	int 1. 整租  2.分租  9.其它
	private Integer house_source;	//房屋来源	int	1.转租  2.自营
	private String net_house_provinces;	//省市县(区)
	private String net_house_street;	//街路巷（小区）
	private String net_house_addr;	//区划内详细地址
	private String net_house_addr_name;	//地址名称
	private String net_house_addr_id;	//网约房地址编码
	private String net_house_data_psb_id;	//网约房所属县（市、区）公安局代码
	private String net_house_data_psb_name;	//网约房所属县（市、区）公安局名称
	private String net_house_data_local_police_id;	//网约房所属派出所代码
	private String net_house_data_local_police_name;	//网约房所属派出所名称
	private String house_type;	//房屋类别
	private String house_num;	//房屋间数
	private String house_acreage;	//房屋面积_面积(平方米)
	private String net_house_provinces1; //省
	private String net_house_provinces2;//市
	private String net_house_provinces3;//区
	private String lock_name;//房屋锁名称
	
	
	public String getLock_name() {
		return lock_name;
	}
	public void setLock_name(String lock_name) {
		this.lock_name = lock_name;
	}
	public String getNet_house_provinces1() {
		return net_house_provinces1;
	}
	public void setNet_house_provinces1(String net_house_provinces1) {
		this.net_house_provinces1 = net_house_provinces1;
	}
	public String getNet_house_provinces2() {
		return net_house_provinces2;
	}
	public void setNet_house_provinces2(String net_house_provinces2) {
		this.net_house_provinces2 = net_house_provinces2;
	}
	public String getNet_house_provinces3() {
		return net_house_provinces3;
	}
	public void setNet_house_provinces3(String net_house_provinces3) {
		this.net_house_provinces3 = net_house_provinces3;
	}
	public Integer getCeng() {
		return ceng;
	}
	public void setCeng(Integer ceng) {
		this.ceng = ceng;
	}
	public Integer getCengs() {
		return cengs;
	}
	public void setCengs(Integer cengs) {
		this.cengs = cengs;
	}
	public String getDanyuan() {
		return danyuan;
	}
	public void setDanyuan(String danyuan) {
		this.danyuan = danyuan;
	}
	public Integer getShi() {
		return shi;
	}
	public void setShi(Integer shi) {
		this.shi = shi;
	}
	public Integer getTing() {
		return ting;
	}
	public void setTing(Integer ting) {
		this.ting = ting;
	}
	public Integer getWei() {
		return wei;
	}
	public void setWei(Integer wei) {
		this.wei = wei;
	}
	public Integer getHouse_check() {
		return house_check;
	}
	public void setHouse_check(Integer house_check) {
		this.house_check = house_check;
	}
	public String getNet_house_id() {
		return net_house_id;
	}
	public void setNet_house_id(String net_house_id) {
		this.net_house_id = net_house_id;
	}
	public String getOperate_id() {
		return operate_id;
	}
	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
	}
	public String getNet_house_name() {
		return net_house_name;
	}
	public void setNet_house_name(String net_house_name) {
		this.net_house_name = net_house_name;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getStop_date() {
		return stop_date;
	}
	public void setStop_date(String stop_date) {
		this.stop_date = stop_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getUse_state() {
		return use_state;
	}
	public void setUse_state(String use_state) {
		this.use_state = use_state;
	}
	public String getHouse_property_name() {
		return house_property_name;
	}
	public void setHouse_property_name(String house_property_name) {
		this.house_property_name = house_property_name;
	}
	public String getHouse_property_phone() {
		return house_property_phone;
	}
	public void setHouse_property_phone(String house_property_phone) {
		this.house_property_phone = house_property_phone;
	}
	public String getHouse_property_id_type() {
		return house_property_id_type;
	}
	public void setHouse_property_id_type(String house_property_id_type) {
		this.house_property_id_type = house_property_id_type;
	}
	public String getHouse_property_id_num() {
		return house_property_id_num;
	}
	public void setHouse_property_id_num(String house_property_id_num) {
		this.house_property_id_num = house_property_id_num;
	}
	public Integer getHouse_property_type() {
		return house_property_type;
	}
	public void setHouse_property_type(Integer house_property_type) {
		this.house_property_type = house_property_type;
	}
	public Integer getHouse_rentout_type() {
		return house_rentout_type;
	}
	public void setHouse_rentout_type(Integer house_rentout_type) {
		this.house_rentout_type = house_rentout_type;
	}
	public Integer getHouse_source() {
		return house_source;
	}
	public void setHouse_source(Integer house_source) {
		this.house_source = house_source;
	}
	public String getNet_house_provinces() {
		return net_house_provinces;
	}
	public void setNet_house_provinces(String net_house_provinces) {
		this.net_house_provinces = net_house_provinces;
	}
	public String getNet_house_street() {
		return net_house_street;
	}
	public void setNet_house_street(String net_house_street) {
		this.net_house_street = net_house_street;
	}
	public String getNet_house_addr() {
		return net_house_addr;
	}
	public void setNet_house_addr(String net_house_addr) {
		this.net_house_addr = net_house_addr;
	}
	public String getNet_house_addr_name() {
		return net_house_addr_name;
	}
	public void setNet_house_addr_name(String net_house_addr_name) {
		this.net_house_addr_name = net_house_addr_name;
	}
	public String getNet_house_addr_id() {
		return net_house_addr_id;
	}
	public void setNet_house_addr_id(String net_house_addr_id) {
		this.net_house_addr_id = net_house_addr_id;
	}
	public String getNet_house_data_psb_id() {
		return net_house_data_psb_id;
	}
	public void setNet_house_data_psb_id(String net_house_data_psb_id) {
		this.net_house_data_psb_id = net_house_data_psb_id;
	}
	public String getNet_house_data_psb_name() {
		return net_house_data_psb_name;
	}
	public void setNet_house_data_psb_name(String net_house_data_psb_name) {
		this.net_house_data_psb_name = net_house_data_psb_name;
	}
	public String getNet_house_data_local_police_id() {
		return net_house_data_local_police_id;
	}
	public void setNet_house_data_local_police_id(
			String net_house_data_local_police_id) {
		this.net_house_data_local_police_id = net_house_data_local_police_id;
	}
	public String getNet_house_data_local_police_name() {
		return net_house_data_local_police_name;
	}
	public void setNet_house_data_local_police_name(
			String net_house_data_local_police_name) {
		this.net_house_data_local_police_name = net_house_data_local_police_name;
	}
	public String getHouse_type() {
		return house_type;
	}
	public void setHouse_type(String house_type) {
		this.house_type = house_type;
	}
	public String getHouse_num() {
		return house_num;
	}
	public void setHouse_num(String house_num) {
		this.house_num = house_num;
	}
	public String getHouse_acreage() {
		return house_acreage;
	}
	public void setHouse_acreage(String house_acreage) {
		this.house_acreage = house_acreage;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getGroups() {
		return groups;
	}
	public void setGroups(String groups) {
		this.groups = groups;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getHousenum() {
		return housenum;
	}
	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}
	public String getHousetype() {
		return housetype;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	public String getToward() {
		return toward;
	}
	public void setToward(String toward) {
		this.toward = toward;
	}
	public String getDecoration() {
		return decoration;
	}
	public void setDecoration(String decoration) {
		this.decoration = decoration;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescribes() {
		return describes;
	}
	public void setDescribes(String describes) {
		this.describes = describes;
	}
	public String getHousestate() {
		return housestate;
	}
	public void setHousestate(String housestate) {
		this.housestate = housestate;
	}
	public String getAgreement() {
		return agreement;
	}
	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}
	public HouseModel() {
		super();
	}
	
	
}
