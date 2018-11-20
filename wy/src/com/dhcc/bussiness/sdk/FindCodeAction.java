package com.dhcc.bussiness.sdk;

import org.apache.log4j.Logger;

import com.dhcc.bussiness.order.OrderDao;
import com.dhcc.bussiness.order.OrderModel;
import com.dhcc.common.util.CommUtil;
import com.opensymphony.xwork2.ActionSupport;

public class FindCodeAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(FindCodeAction.class);
	private String oauth_code;	//授权码
	private UpUtils uu = new UpUtils();
	private String result;
	private OrderModel orderModel;
	private OrderDao orderDao = new OrderDao();
	private String findAll;
	
	
	public String getFindAll() {
		return findAll;
	}
	public void setFindAll(String findAll) {
		this.findAll = findAll;
	}
	public String getOauth_code() {
		return oauth_code;
	}
	public void setOauth_code(String oauth_code) {
		this.oauth_code = oauth_code;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public OrderModel getOrderModel() {
		return orderModel;
	}
	public void setOrderModel(OrderModel orderModel) {
		this.orderModel = orderModel;
	}
	
	public String findcode(){
		
		OrderModel findCode = orderDao.findCode(oauth_code);
		if(findCode == null){
			result = "fail";
		}else{
			oauth_code = findCode.getOauth_code();
			findAll = uu.CodeUp(oauth_code);
			result = "success";
		}
		
		return SUCCESS;
	}
	
	public String boss(){
		String id = CommUtil.getID();
		System.out.println("id ======= " + id);
		uu.BossUp(id, 1, "孙强", "身份证", "370282198203305310", "18505322835", "北京市海淀区长春桥路 11号万柳亿城中心C2座1901室");
		return SUCCESS;
	}
}
