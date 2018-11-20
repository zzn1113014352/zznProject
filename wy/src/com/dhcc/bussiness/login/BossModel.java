package com.dhcc.bussiness.login;

public class BossModel {
	
	private Integer id;
	private String operate_id;//经营者编码
	private Integer operate_type;//经营者类型	int	1.自然人  2企业
	private String operate_name;//经营责任人姓名
	private String operate_id_type;//经营责任人证件种类
	private String operate_id_num;//经营责任人证件号码
	private String operate_phone;//经营责任人联系电话
	private String operate_addr;//经营责任人实际居住地址
	private String password;//密码
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOperate_id() {
		return operate_id;
	}
	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
	}
	public Integer getOperate_type() {
		return operate_type;
	}
	public void setOperate_type(Integer operate_type) {
		this.operate_type = operate_type;
	}
	public String getOperate_name() {
		return operate_name;
	}
	public void setOperate_name(String operate_name) {
		this.operate_name = operate_name;
	}
	public String getOperate_id_type() {
		return operate_id_type;
	}
	public void setOperate_id_type(String operate_id_type) {
		this.operate_id_type = operate_id_type;
	}
	public String getOperate_id_num() {
		return operate_id_num;
	}
	public void setOperate_id_num(String operate_id_num) {
		this.operate_id_num = operate_id_num;
	}
	public String getOperate_phone() {
		return operate_phone;
	}
	public void setOperate_phone(String operate_phone) {
		this.operate_phone = operate_phone;
	}
	public String getOperate_addr() {
		return operate_addr;
	}
	public void setOperate_addr(String operate_addr) {
		this.operate_addr = operate_addr;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public BossModel() {
		super();
	}
	
	
	
	
}
