package com.dhcc.bussiness.orderstate;

import java.util.List;

import org.apache.log4j.Logger;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderStateAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(OrderStateAction.class);
	private OrderStateDao osd = new OrderStateDao();
	private List<OrderStateModel> osm;
	public List<OrderStateModel> getOsm() {
		return osm;
	}
	public void setOsm(List<OrderStateModel> osm) {
		this.osm = osm;
	}
	
	public String showOsm(){
		osm = osd.selectOpcAll();
		ActionContext.getContext().getSession().put("osm",osm);
		return SUCCESS;
	}
	
	
}
