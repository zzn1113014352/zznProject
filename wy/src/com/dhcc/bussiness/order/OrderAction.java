package com.dhcc.bussiness.order;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.codehaus.jackson.map.ObjectMapper;

import com.alibaba.fastjson.JSON;
import com.dhcc.bussiness.User.UserAllModel;
import com.dhcc.bussiness.User.UserDao;
import com.dhcc.bussiness.User.UserModel;
import com.dhcc.bussiness.house.HouseModel;
import com.dhcc.bussiness.page.PageBean;
import com.dhcc.bussiness.sdk.UpUtils;
import com.dhcc.bussiness.sms.ChuangLanSmsUtil;
import com.dhcc.bussiness.sms.SmsSendRequest;
import com.dhcc.bussiness.sms.SmsSendResponse;
import com.dhcc.common.util.CommUtil;
import com.dhcc.utils.Send;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(OrderAction.class);
	private OrderDao orderDao = new OrderDao();
	private List<OrderModel> orderModelAll;
	private Integer id;
	private String result;
	private OrderModel orderModel;
	
	private String name;
	private String phone;
	private Integer currentPage;
	private Integer currentCount = 10;
	private String pc;
	private Integer state;
	private PageBean<OrderModel> pageBean;
	private OrderService orderService = new OrderService();
	private String start;
	private UpUtils uu = new UpUtils();
	private String code;
	private String house;
	private String source;
	private String people;
	private String money;
	private String oauth_code;	//授权码
	private String housenum;
	private String reserve_phone;//预订人手机号
	private String states;//入住状态
	private String operate_id;
	private String net_house_id;
	private List<HouseModel> houseAll;
	private String stop;
	private String reserve_name;//姓名
	private String reserve_id_type;//证件类型
	private String reserve_id_num;//证件号码
	public static String account = "N9728120";
	public static String pswd = "hwkSmpC8U";
	private HttpServletResponse response;
	private String reside_date;
	private String reside_retreat_date;
	
	public String getReside_date() {
		return reside_date;
	}

	public void setReside_date(String reside_date) {
		this.reside_date = reside_date;
	}

	public String getReside_retreat_date() {
		return reside_retreat_date;
	}

	public void setReside_retreat_date(String reside_retreat_date) {
		this.reside_retreat_date = reside_retreat_date;
	}

	public String getReserve_name() {
		return reserve_name;
	}

	public void setReserve_name(String reserve_name) {
		this.reserve_name = reserve_name;
	}

	public String getReserve_id_type() {
		return reserve_id_type;
	}

	public void setReserve_id_type(String reserve_id_type) {
		this.reserve_id_type = reserve_id_type;
	}

	public String getReserve_id_num() {
		return reserve_id_num;
	}

	public void setReserve_id_num(String reserve_id_num) {
		this.reserve_id_num = reserve_id_num;
	}

	public String getStop() {
		return stop;
	}

	public void setStop(String stop) {
		this.stop = stop;
	}

	public List<HouseModel> getHouseAll() {
		return houseAll;
	}

	public void setHouseAll(List<HouseModel> houseAll) {
		this.houseAll = houseAll;
	}

	public String getNet_house_id() {
		return net_house_id;
	}

	public void setNet_house_id(String net_house_id) {
		this.net_house_id = net_house_id;
	}

	public String getOperate_id() {
		return operate_id;
	}

	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
	}

	public String getStates() {
		return states;
	}

	public void setStates(String states) {
		this.states = states;
	}

	public String getReserve_phone() {
		return reserve_phone;
	}

	public void setReserve_phone(String reserve_phone) {
		this.reserve_phone = reserve_phone;
	}

	public String getOauth_code() {
		return oauth_code;
	}

	public void setOauth_code(String oauth_code) {
		this.oauth_code = oauth_code;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getPeople() {
		return people;
	}

	public void setPeople(String people) {
		this.people = people;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getHousenum() {
		return housenum;
	}

	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public PageBean<OrderModel> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<OrderModel> pageBean) {
		this.pageBean = pageBean;
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

	public String getPc() {
		return pc;
	}

	public void setPc(String pc) {
		this.pc = pc;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public OrderModel getOrderModel() {
		return orderModel;
	}

	public void setOrderModel(OrderModel orderModel) {
		this.orderModel = orderModel;
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

	public List<OrderModel> getOrderModelAll() {
		return orderModelAll;
	}

	public void setOrderModelAll(List<OrderModel> orderModelAll) {
		this.orderModelAll = orderModelAll;
	}
	
	public String QueryHouse(){
		houseAll = orderDao.QueryHouse(operate_id);
		ActionContext.getContext().getSession().put("houseAll", houseAll);
		return SUCCESS;
	}
	
	public String insertOrder() throws Exception{
		String Order_id = CommUtil.getID();
		
		Random random = new Random();
		String Oauth_code="";
		for (int i=0;i<6;i++)
		{
			Oauth_code+=random.nextInt(10);
		}
		
		String bizTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		String Orders_date = bizTime;		//下单时间
		String Update_date = bizTime;	//跟新时间
		
		//表中预定时间和退房时间
		start =	reside_date;
		stop = reside_retreat_date;
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		
		Date reside = DateUtils.parseDate(reside_date,new String[] {"yyyy-MM-dd HH:mm:ss"});	//拟入住时间
		String reside_date2 = DateFormatUtils.format(reside, "yyyyMMddHHmmss");
		
		Date reside_retreat = DateUtils.parseDate(reside_retreat_date,new String[] {"yyyy-MM-dd HH:mm:ss"});	//拟退房时间
		String reside_retreat_date2 = DateFormatUtils.format(reside_retreat, "yyyyMMddHHmmss");
		
		orderDao.addOrder(Order_id,Oauth_code,net_house_id,Orders_date,reside_date2,reside_retreat_date2,Update_date,people,money,reserve_phone,operate_id,start,stop,reserve_name,reserve_id_type,reserve_id_num);
		
		uu.OrderUp(Order_id, Oauth_code, net_house_id, Orders_date, reside_date2, reside_retreat_date2, Update_date);
		code = uu.CodeUp(Oauth_code);
		Send.sendSms(reserve_phone, Oauth_code);
		
		
		return SUCCESS;
	}
	
	
	/*
	 * 根据平台查询订单
	 */
	 public String queryByPc(){
	 	HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		if(pc != null){

				 pageBean = orderService.selectOrderByPc(pc,operate_id,currentPage, currentCount);
			 
		 }else{
		
				 pageBean = orderService.selectOrderByCheck(states,operate_id, currentPage, currentCount);
		
		 }
		
		 ActionContext.getContext().getSession().put("pageBean", pageBean);
		 return "success4";
	 }
	
	/*
	 * 根据id查询实体
	 */
	public String queryById(){
		orderModel = orderDao.queryById(id);
		return SUCCESS;
	}
	
	/*
	 * 订单搜索功能
	 */
	public String queryByName(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		if(name.equals("")){
			pageBean = orderService.findOrderByPage(operate_id,currentPage,currentCount);
		}else{
			pageBean = orderService.queryByName(name,operate_id,currentPage,currentCount);
		}
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "success3";
	}
	
	public String findOrderByPage() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		pageBean = orderService.findOrderByPage(operate_id,currentPage,currentCount);
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "success5";
	}
	
	public String queryByTime() throws ParseException{
	/*	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//24小时制
		long time = simpleDateFormat.parse(start).getTime();
		System.out.println(time);*/
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		if(start.equals("")){
			pageBean = orderService.findOrderByPage(operate_id,currentPage,currentCount);
		}else{
			pageBean = orderService.queryByTime(start,operate_id,currentPage,currentCount);
		}
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "Bytime";
	}
	
}
