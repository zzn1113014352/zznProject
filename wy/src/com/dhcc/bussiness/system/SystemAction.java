package com.dhcc.bussiness.system;

import org.apache.log4j.Logger;

import com.dhcc.bussiness.notice.NoticeDao;
import com.dhcc.bussiness.notice.NoticeModel;
import com.opensymphony.xwork2.ActionSupport;

public class SystemAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(SystemAction.class);
	SystemDao dao=new SystemDao();
	private SystemModel model;
	private String ids;// 前台传过来的id的字符串，用‘，’来分割
	private String result;
	private Integer id;
	private String type;
	private String content;
	private int page; // 当前页码
	private int total; // 
	private int pagesize; // 当前页显示的数据行数
	private int record;// 当前数据条数

	/**
	 * 根据id删除数据信息
	 */
	public String serviceDel() {
		if (ids != null && !ids.equals("")) {
			result = dao.systemDel(ids.split(","));
		}
		dao = null;
		return SUCCESS;
	}
	 //根据id 查询详细信息
	public String serviceQueryById() {
		model=dao.systemQueryById(id);
		return SUCCESS;
	}
	/**
	 * 修改信息
	 */
	public String updateService() {
		boolean b = dao.updatesystem(id, type, content);
		if(b){
			result = "success";
		}
		return SUCCESS;
	}
	/**
	 * 添加信息
	 */
	public String serviceAdd() {
		SystemDao dao = new SystemDao();
		SystemModel model=new SystemModel();
		String nowTime=String.valueOf(System.currentTimeMillis());
		model.setAddtime(nowTime);
		model.setState(0);
		model.setContent(content);
		model.setType(type);
		int b= dao.systemAdd(model);
		if(b>0){
			result = "success";
		}
		dao = null;
		return SUCCESS;
	}
	//修改字体颜色
	public String updateServiceState() {
		boolean b = dao.updateSystemState(1,id);
		if(b){
			result = "success";
		}
		return SUCCESS;
	}


	public String getIds() {
		return ids;
	}


	public SystemModel getModel() {
		return model;
	}
	public void setModel(SystemModel model) {
		this.model = model;
	}
	public void setIds(String ids) {
		this.ids = ids;
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




	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}




	public String getContent() {
		return content;
	}




	public void setContent(String content) {
		this.content = content;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getRecord() {
		return record;
	}
	public void setRecord(int record) {
		this.record = record;
	}
}