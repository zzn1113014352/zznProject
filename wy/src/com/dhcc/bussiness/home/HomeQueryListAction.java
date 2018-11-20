package com.dhcc.bussiness.home;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.dhcc.utils.PageModel;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



/**
 * @作者：zzn 
 */
public class HomeQueryListAction extends ActionSupport {
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 1L;
	private List<HomeModel> listmodel = new ArrayList<HomeModel>();// 前台的数据集合
	private Integer page; //当前页码
	private Integer total;//总条数
	private Integer record;//当前数据条数
	private String floor;//楼层
	private String housetype;//房型
	private String housenum;//房号
	private String toward;//特性
	private String housestate;//房间状态
	private Integer id;
	private HomeModel model;
	private HttpServletResponse response;
	private String result;
	private String operate_id;
	
	
	public String getOperate_id() {
		return operate_id;
	}

	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
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

	public HomeModel getModel() {
		return model;
	}

	public void setModel(HomeModel model) {
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
	public String HomeQueryList() throws Exception {
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		HomeDao md=new HomeDao();
		PageModel pm = new PageModel();
		pm.setCurrentPage(page);
		pm = md.HomeQueryList(pm,floor,housetype, toward, housenum, housestate,operate_id);
		//总的记录数
		record = pm.getTotalRecord();
		//总页数
		total = pm.getTotalPage();//total:总页数
		listmodel = pm.getList();
		return SUCCESS;
	}
	//查询维修
	public String HomeQueryWeixiu() throws Exception {
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		HomeDao md=new HomeDao();
		PageModel pm = new PageModel();
		pm.setCurrentPage(page);
		pm = md.HomeQueryWeixiu(pm, operate_id);
		//总的记录数
		record = pm.getTotalRecord();
		//总页数
		total = pm.getTotalPage();//total:总页数
		listmodel = pm.getList();
		return SUCCESS;
	}
	//查询打扫
	public String HomeQueryDasao() throws Exception {
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		HomeDao md=new HomeDao();
		PageModel pm = new PageModel();
		pm.setCurrentPage(page);
		pm = md.HomeQueryDasao(pm,operate_id);
		//总的记录数
		record = pm.getTotalRecord();
		//总页数
		total = pm.getTotalPage();//total:总页数
		listmodel = pm.getList();
		return SUCCESS;
	}
	//改变状态
	public String changeHomeState()throws Exception{
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		HomeDao md=new HomeDao();
		boolean b = md.updateHomeState(id, housestate);
		if(b){
			result = "success";
		}
		return SUCCESS;
	}
	 //查询详细信息已住和预定
		public String HomeQueryById() {
			operate_id = ActionContext.getContext().getSession().get("userid").toString();
			HomeDao md=new HomeDao();
			model = md.HomeQueryById(id,operate_id);
			return SUCCESS;
		}
	public List<HomeModel> getListmodel() {
		return listmodel;
	}

	public void setListmodel(List<HomeModel> listmodel) {
		this.listmodel = listmodel;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getHousetype() {
		return housetype;
	}

	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}

	public String getHousenum() {
		return housenum;
	}

	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}

	public String getToward() {
		return toward;
	}

	public void setToward(String toward) {
		this.toward = toward;
	}

	public String getHousestate() {
		return housestate;
	}

	public void setHousestate(String housestate) {
		this.housestate = housestate;
	}


	




}
