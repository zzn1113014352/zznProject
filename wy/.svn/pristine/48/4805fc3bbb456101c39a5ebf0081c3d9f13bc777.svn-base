package com.dhcc.bussiness.notice;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.ObjectMapper;

import com.dhcc.utils.JsonUtils;
import com.dhcc.utils.PageModel;
import com.opensymphony.xwork2.ActionSupport;



/**
 * @作者：zzn 
 */
public class NoticeQueryListAction extends ActionSupport {
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 1L;
	private List<NoticeModel> listmodel = new ArrayList<NoticeModel>();// 前台的数据集合
	private Integer page; //当前页码
	private Integer total;//总条数
	private Integer record;//当前数据条数
	private String content;//内容
	private NoticeModel model;
	private HttpServletResponse response;
	
	public NoticeModel getModel() {
		return model;
	}

	public void setModel(NoticeModel model) {
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
	public String noticeQueryList() throws Exception {
		NoticeDao md=new NoticeDao();
		PageModel pm = new PageModel();
		pm.setCurrentPage(page);
		pm = md.noticeQueryList(pm,content);
		//总的记录数
		record = pm.getTotalRecord();
		//总页数
		total = pm.getTotalPage();//total:总页数
		listmodel = pm.getList();
		return SUCCESS;
	}
	
	public List<NoticeModel> getListmodel() {
		return listmodel;
	}
	public void setListmodel(List<NoticeModel> listmodel) {
		this.listmodel = listmodel;
	}



	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}



}
