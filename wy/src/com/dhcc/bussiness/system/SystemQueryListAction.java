package com.dhcc.bussiness.system;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.ObjectMapper;

import com.dhcc.bussiness.notice.NoticeDao;
import com.dhcc.utils.JsonUtils;
import com.dhcc.utils.PageModel;
import com.opensymphony.xwork2.ActionSupport;



/**
 * @作者：zzn 
 */
public class SystemQueryListAction extends ActionSupport {
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 1L;
	private List<SystemModel> listmodel = new ArrayList<SystemModel>();// 前台的数据集合
	private Integer page; //当前页码
	private Integer total;//总条数
	private Integer record;//当前数据条数
	private String content;//内容
	private SystemModel model;
	private HttpServletResponse response;
	
	public SystemModel getModel() {
		return model;
	}

	public void setModel(SystemModel model) {
		this.model = model;
	}
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getRecord() {
		return record;
	}

	public void setRecord(Integer record) {
		this.record = record;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	/**
	 * 中心通知信息列表查询
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String serviceQueryList() throws Exception {
		SystemDao md=new SystemDao();
		PageModel pm = new PageModel();
		pm.setCurrentPage(page);
		pm = md.systemQueryList(pm,content);
		//总的记录数
		record = pm.getTotalRecord();
		//总页数
		total = pm.getTotalPage();//total:总页数
		listmodel = pm.getList();
		return SUCCESS;
		
		
		
	}
	
	public List<SystemModel> getListmodel() {
		return listmodel;
	}
	public void setListmodel(List<SystemModel> listmodel) {
		this.listmodel = listmodel;
	}



	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}



}
