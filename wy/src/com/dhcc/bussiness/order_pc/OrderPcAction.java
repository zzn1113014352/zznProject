package com.dhcc.bussiness.order_pc;

import java.util.List;
import org.apache.log4j.Logger;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderPcAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(OrderPcAction.class);

	private OrderPcDao opc = new OrderPcDao();
	private List<OrderPcModel> opcAll;
	
	public List<OrderPcModel> getOpcAll() {
		return opcAll;
	}
	public void setOpcAll(List<OrderPcModel> opcAll) {
		this.opcAll = opcAll;
	}


	public String showOpc(){
		opcAll = opc.selectOpcAll();
		return SUCCESS;
	}
	
}
