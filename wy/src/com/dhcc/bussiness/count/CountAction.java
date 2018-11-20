package com.dhcc.bussiness.count;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.bussiness.page.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CountAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(CountAction.class);
	private CountDao countDao = new CountDao();
	private List<CountModel> countModel;
	private String operate_id;
	private CountService countService = new CountService();
	private Integer currentPage;
	private Integer currentCount = 10;
	private PageBean<CountModel> pageBean;
	
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getCurrentCount() {
		return currentCount;
	}

	public void setCurrentCount(Integer currentCount) {
		this.currentCount = currentCount;
	}

	public PageBean<CountModel> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<CountModel> pageBean) {
		this.pageBean = pageBean;
	}

	public String getOperate_id() {
		return operate_id;
	}

	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
	}

	public List<CountModel> getCountModel() {
		return countModel;
	}

	public void setCountModel(List<CountModel> countModel) {
		this.countModel = countModel;
	}


	//财务统计——详情
	public String countDatails(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		pageBean = countService.findCountByPage(operate_id, currentPage, currentCount);
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "canalIncome";
	}
	
}
