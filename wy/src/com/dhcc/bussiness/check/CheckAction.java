package com.dhcc.bussiness.check;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.bussiness.house.HouseDao;
import com.dhcc.bussiness.house.HouseModel;
import com.dhcc.bussiness.page.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(CheckAction.class);
	private CheckDao checkDao = new CheckDao();
	private Integer currentPage;
	private Integer currentCount = 10;
	private PageBean<CheckModel> pageBean;
	private Integer id;
	private HouseDao houseDao = new HouseDao();
	private HouseModel houseModel = new HouseModel();
	private String result;
	private String start;
	private String userphone;
	
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
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
	public PageBean<CheckModel> getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean<CheckModel> pageBean) {
		this.pageBean = pageBean;
	}

	
	/*
	 * 通过审核
	 */
	public String GoCheck(){
		houseModel = houseDao.queryById(id);
		if(houseModel.getUse_state().equals("未上线") && houseModel.getUse_state().toString().equals("未上线")){
			//修改房源状态和审核状态为已上线
			int i = houseDao.updateGoCheck(houseModel.getNet_house_id());
			/*int j = checkDao.updateGoCheck(houseModel.getNet_house_id());*/
			if(i >0){
				result = "success";
			}else{
				result = "fail";
			}
		}else if(houseModel.getUse_state().equals("已上线") &&houseModel.getUse_state().toString().equals("已上线")){
			//修改房源状态和审核状态为未上线
			int i = houseDao.updateGoCheck2(houseModel.getNet_house_id());
			/*int j = checkDao.updateGoCheck2(houseModel.getNet_house_id());*/
			if(i >0){
				result = "success";
			}else{
				result = "fail";
			}
		}
		
		return SUCCESS;
	}
	
	/*
	 * 搜索功能
	 
	public String queryByPhone(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		if(userphone.equals("")){
			pageBean = checkService.findCheckByPage(currentPage,currentCount);
		}else{
			pageBean = checkService.queryByCheckPhone(userphone,currentPage,currentCount);
		}
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "queryByPhone";
	}*/
	
}
