package com.dhcc.bussiness.alluser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.bussiness.User.UserModel;
import com.dhcc.bussiness.login.InitUserModel;
import com.dhcc.bussiness.page.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AlluserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(AlluserAction.class);
	private AlluserDao dao = new AlluserDao();
	private String _id;
	private String result;
	private String phone;
	private String id;
	private String username;
	private String idcard;
	private String lianxifangshi;
	private All_userModel model;
	// 分页start
	private Integer currentPage;
	private Integer currentCount = 10;
	private PageBean<All_userModel> pageBean;
	private AlluserService alluserService = new AlluserService();

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

	public PageBean<All_userModel> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<All_userModel> pageBean) {
		this.pageBean = pageBean;
	}

	// 分页end
	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public AlluserService getAlluserService() {
		return alluserService;
	}

	public void setAlluserService(AlluserService alluserService) {
		this.alluserService = alluserService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getLianxifangshi() {
		return lianxifangshi;
	}

	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}

	public All_userModel getModel() {
		return model;
	}

	public void setModel(All_userModel model) {
		this.model = model;
	}

	/**
	 * 初始化用户列表
	 */
	public String findAlluserByPage() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer
				.parseInt(request.getParameter("currentPage") == null ? "1"
						: request.getParameter("currentPage"));// 规定是第一页
		pageBean = alluserService.findAlluserByPage(currentPage, currentCount,result);
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "alluserlist";
	}


	/**
	 * 所有用户删除一条数据
	 */
	public String delAlluserId() {
		int i = dao.delAlluserId(_id);
		if (i > 0) {
			result = "success";
		}
		return SUCCESS;
	}

	/**
	 * 所有用户删除
	 */
	public String user_sDel() {
		if ("".equals(id)) {
			logger.info("id为空");
		}
		result = dao.user_sDel(id);
		return SUCCESS;
	}

	/**
	 * 添加用户
	 */
	public String insert_WyfUser() {
		All_userModel model = dao.queryAlluser(username, idcard, lianxifangshi);
		if(model != null){
			result = "cunzai";
		}else{
			int i = dao.insert_WyfUser(username, idcard, lianxifangshi);
			if(i>0){
				result = "success";
			}else{
				result = "fail";
			}
		}
		return SUCCESS;
	}
	
	/**
	 * 修改用户
	 */
	public String update_WyfUser() {
		int i = dao.update_WyfUser(username, idcard, lianxifangshi,id);
		if(i>0){
			result = "success";
		}else{
			result = "fail";
		}
		return SUCCESS;
	}
	
	/**
	 * 初始化用户ID信息
	 */
	public String findAlluserByPageId() {
		model = dao.findAlluserByPageId(id);
		return SUCCESS;
	}
}
