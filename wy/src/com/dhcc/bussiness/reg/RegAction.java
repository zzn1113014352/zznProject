package com.dhcc.bussiness.reg;

import com.opensymphony.xwork2.ActionSupport;

public class RegAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String result;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String gainRandom(){
		//接入短信接口(待补充)
		result = "123456";
		return SUCCESS;
	}

}
