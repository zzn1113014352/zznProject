package com.dhcc.bussiness.house;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.bussiness.User.UserAllModel;
import com.dhcc.bussiness.User.UserDao;
import com.dhcc.bussiness.User.UserModel;
import com.dhcc.bussiness.check.CheckDao;
import com.dhcc.bussiness.check.CheckModel;
import com.dhcc.bussiness.page.PageBean;
import com.dhcc.bussiness.sdk.UpUtils;
import com.dhcc.common.util.CommUtil;
import com.dhcc.utils.QrUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HouseAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(HouseAction.class);
	private Integer currentPage;
	private Integer currentCount = 10;
	private PageBean<HouseModel> pageBean;
	private HouseService houseService = new HouseService();
	private HouseDao houseDao = new HouseDao();
	private HouseModel houseModel;
	private String id;
	private String result;
	private String house;
	private String source;
	private String groups;
	private String location;
	private String img;
	private String housenum;
	private String housetype;
	private String toward;
	private String decoration;
	private String floor;
	private String rent;
	private String title;
	private String describes;
	private String housestate;
	private String agreement;
	private Integer shi;
	private Integer ting;
	private Integer wei;
	private Integer ceng;
	private Integer cengs;
	private String danyuan;
	
	private String net_house_id;	//网约房编码
	private String operate_id;	//经营者编码
	private String net_house_name;	//网约房名称
	private String start_date;	//启用日期
	private String stop_date;	//停用日期
	private String update_date;	//更新时间
	private String register_date;	//登记时间
	private String use_state;	//使用状态
	private String house_property_name;	//房屋产权人姓名
	private String house_property_phone;	//房屋产权人联系电话
	private String house_property_id_type;	//房屋产权人证件种类
	private String house_property_id_num;	//房屋产权人证件号码
	private Integer house_property_type;	//房屋产权人类型	int	1.自然人   2.企业
	private Integer house_rentout_type;	//出租类型	int 1. 整租  2.分租  9.其它
	private Integer house_source;	//房屋来源	int	1.转租  2.自营
	private String net_house_provinces;	//省市县(区)
	private String net_house_street;	//街路巷（小区）
	private String net_house_addr;	//区划内详细地址
	private String net_house_addr_name;	//地址名称
	private String net_house_addr_id;	//网约房地址编码
	private String net_house_data_psb_id;	//网约房所属县（市、区）公安局代码
	private String net_house_data_psb_name;	//网约房所属县（市、区）公安局名称
	private String net_house_data_local_police_id;	//网约房所属派出所代码
	private String net_house_data_local_police_name;	//网约房所属派出所名称
	private String house_type;	//房屋类别
	private String house_num;	//房屋间数
	private String house_acreage;	//房屋面积_面积(平方米)
	private String net_house_provinces1;
	private String net_house_provinces2;
	private String net_house_provinces3;
	private UploadDao dao = new UploadDao();
	private List<UploadModel> upModel;
	private CheckDao checkDao = new CheckDao();
	private UserDao userDao = new UserDao();
	private UpUtils uu = new UpUtils();
	private String lock_name;
	
	
	public String getLock_name() {
		return lock_name;
	}
	public void setLock_name(String lock_name) {
		this.lock_name = lock_name;
	}
	public Integer getShi() {
		return shi;
	}
	public void setShi(Integer shi) {
		this.shi = shi;
	}
	public Integer getTing() {
		return ting;
	}
	public void setTing(Integer ting) {
		this.ting = ting;
	}
	public Integer getWei() {
		return wei;
	}
	public void setWei(Integer wei) {
		this.wei = wei;
	}
	public Integer getCeng() {
		return ceng;
	}
	public void setCeng(Integer ceng) {
		this.ceng = ceng;
	}
	public Integer getCengs() {
		return cengs;
	}
	public void setCengs(Integer cengs) {
		this.cengs = cengs;
	}
	public String getDanyuan() {
		return danyuan;
	}
	public void setDanyuan(String danyuan) {
		this.danyuan = danyuan;
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
	public String getNet_house_name() {
		return net_house_name;
	}
	public void setNet_house_name(String net_house_name) {
		this.net_house_name = net_house_name;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getStop_date() {
		return stop_date;
	}
	public void setStop_date(String stop_date) {
		this.stop_date = stop_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getUse_state() {
		return use_state;
	}
	public void setUse_state(String use_state) {
		this.use_state = use_state;
	}
	public String getHouse_property_name() {
		return house_property_name;
	}
	public void setHouse_property_name(String house_property_name) {
		this.house_property_name = house_property_name;
	}
	public String getHouse_property_phone() {
		return house_property_phone;
	}
	public void setHouse_property_phone(String house_property_phone) {
		this.house_property_phone = house_property_phone;
	}
	public String getHouse_property_id_type() {
		return house_property_id_type;
	}
	public void setHouse_property_id_type(String house_property_id_type) {
		this.house_property_id_type = house_property_id_type;
	}
	public String getHouse_property_id_num() {
		return house_property_id_num;
	}
	public void setHouse_property_id_num(String house_property_id_num) {
		this.house_property_id_num = house_property_id_num;
	}
	public Integer getHouse_property_type() {
		return house_property_type;
	}
	public void setHouse_property_type(Integer house_property_type) {
		this.house_property_type = house_property_type;
	}
	public Integer getHouse_rentout_type() {
		return house_rentout_type;
	}
	public void setHouse_rentout_type(Integer house_rentout_type) {
		this.house_rentout_type = house_rentout_type;
	}
	public Integer getHouse_source() {
		return house_source;
	}
	public void setHouse_source(Integer house_source) {
		this.house_source = house_source;
	}
	public String getNet_house_provinces() {
		return net_house_provinces;
	}
	public void setNet_house_provinces(String net_house_provinces) {
		this.net_house_provinces = net_house_provinces;
	}
	public String getNet_house_street() {
		return net_house_street;
	}
	public void setNet_house_street(String net_house_street) {
		this.net_house_street = net_house_street;
	}
	public String getNet_house_addr() {
		return net_house_addr;
	}
	public void setNet_house_addr(String net_house_addr) {
		this.net_house_addr = net_house_addr;
	}
	public String getNet_house_addr_name() {
		return net_house_addr_name;
	}
	public void setNet_house_addr_name(String net_house_addr_name) {
		this.net_house_addr_name = net_house_addr_name;
	}
	public String getNet_house_addr_id() {
		return net_house_addr_id;
	}
	public void setNet_house_addr_id(String net_house_addr_id) {
		this.net_house_addr_id = net_house_addr_id;
	}
	public String getNet_house_data_psb_id() {
		return net_house_data_psb_id;
	}
	public void setNet_house_data_psb_id(String net_house_data_psb_id) {
		this.net_house_data_psb_id = net_house_data_psb_id;
	}
	public String getNet_house_data_psb_name() {
		return net_house_data_psb_name;
	}
	public void setNet_house_data_psb_name(String net_house_data_psb_name) {
		this.net_house_data_psb_name = net_house_data_psb_name;
	}
	public String getNet_house_data_local_police_id() {
		return net_house_data_local_police_id;
	}
	public void setNet_house_data_local_police_id(
			String net_house_data_local_police_id) {
		this.net_house_data_local_police_id = net_house_data_local_police_id;
	}
	public String getNet_house_data_local_police_name() {
		return net_house_data_local_police_name;
	}
	public void setNet_house_data_local_police_name(
			String net_house_data_local_police_name) {
		this.net_house_data_local_police_name = net_house_data_local_police_name;
	}
	public String getHouse_type() {
		return house_type;
	}
	public void setHouse_type(String house_type) {
		this.house_type = house_type;
	}
	public String getHouse_num() {
		return house_num;
	}
	public void setHouse_num(String house_num) {
		this.house_num = house_num;
	}
	public String getHouse_acreage() {
		return house_acreage;
	}
	public void setHouse_acreage(String house_acreage) {
		this.house_acreage = house_acreage;
	}
	public String getNet_house_provinces1() {
		return net_house_provinces1;
	}
	public void setNet_house_provinces1(String net_house_provinces1) {
		this.net_house_provinces1 = net_house_provinces1;
	}
	public String getNet_house_provinces2() {
		return net_house_provinces2;
	}
	public void setNet_house_provinces2(String net_house_provinces2) {
		this.net_house_provinces2 = net_house_provinces2;
	}
	public String getNet_house_provinces3() {
		return net_house_provinces3;
	}
	public void setNet_house_provinces3(String net_house_provinces3) {
		this.net_house_provinces3 = net_house_provinces3;
	}
	public List<UploadModel> getUpModel() {
		return upModel;
	}
	public void setUpModel(List<UploadModel> upModel) {
		this.upModel = upModel;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getGroups() {
		return groups;
	}
	public void setGroups(String groups) {
		this.groups = groups;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getHousenum() {
		return housenum;
	}
	public void setHousenum(String housenum) {
		this.housenum = housenum;
	}
	public String getHousetype() {
		return housetype;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}
	public String getToward() {
		return toward;
	}
	public void setToward(String toward) {
		this.toward = toward;
	}
	public String getDecoration() {
		return decoration;
	}
	public void setDecoration(String decoration) {
		this.decoration = decoration;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescribes() {
		return describes;
	}
	public void setDescribes(String describes) {
		this.describes = describes;
	}
	public String getHousestate() {
		return housestate;
	}
	public void setHousestate(String housestate) {
		this.housestate = housestate;
	}
	public String getAgreement() {
		return agreement;
	}
	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public HouseModel getHouseModel() {
		return houseModel;
	}
	public void setHouseModel(HouseModel houseModel) {
		this.houseModel = houseModel;
	}
	public PageBean<HouseModel> getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean<HouseModel> pageBean) {
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
	public HouseService getHouseService() {
		return houseService;
	}
	public void setHouseService(HouseService houseService) {
		this.houseService = houseService;
	}
	
	
	public String findHouseByPage() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		operate_id = ActionContext.getContext().getSession().get("userid").toString();
		pageBean = houseService.findHouseByPage(operate_id,currentPage,currentCount);
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "success6";
	}
	
	/*
	 * 根据id查询实体
	 */
	public String queryHouseById(){
		houseModel = houseDao.queryById(id);
		ActionContext.getContext().getSession().put("houseModel", houseModel);
		return "houseDetail";
	}
	
	/*
	 * 根据id删除实体
	 */
	public String houseDel(){
		result = houseDao.houseDel(id);
		return SUCCESS;
	}
	
	/*
	 * 上线请求
	 */
	public String houseUp() throws Exception{
		//通过房源id查询用户id
		houseModel = houseDao.queryById(id);
		CheckModel checkById = checkDao.findCheckById(houseModel.getNet_house_id());
		if(checkById == null){
			//获取请求审核时间
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
			Date parse = df.parse(df.format(new Date()));
			long ts = parse.getTime();
			String start = String.valueOf(ts);//登记时间
			UserModel user = userDao.selectUser(houseModel.getOperate_id());
			UserAllModel userAll = userDao.selectUserAll(houseModel.getOperate_id());
			
			String contents = null;
			String states = houseModel.getUse_state();
			if(states.equals("未上线")){
				contents = "房源上线";
			}else{
				contents = "房源下线";
			}
			
			checkDao.addCheck(userAll.getName(), user.getPhone(), contents, start, states, houseModel.getNet_house_id());
			result = "success";
		}else{
			result = "fail";
		}
		return SUCCESS;
	}
	
	/*
	 * 添加房源
	 */
	public String addHouse() throws Exception{
		upModel = dao.queryImg(net_house_id);
		if(net_house_provinces3 == null){
			net_house_provinces = net_house_provinces1 + net_house_provinces2;
		}else{
			net_house_provinces = net_house_provinces1 + net_house_provinces2 + net_house_provinces3;
		}
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
		Date parse = df.parse(df.format(new Date()));
		long ts = parse.getTime();
		
		register_date = String.valueOf(ts);//登记时间
		update_date = String.valueOf(ts);//更新时间
		
		//启用时间start
		 start_date = String.valueOf(ts);
		
		//启用时间end
		
		//停用时间start
		Calendar curr = Calendar.getInstance();
		curr.set(Calendar.YEAR,curr.get(Calendar.YEAR)+3);
		Date stopdate=curr.getTime();
		long stoptime = stopdate.getTime();
		stop_date = String.valueOf(stoptime);
		
		//停用时间end
		
		//上报时间
		String format = df.format(new Date());
		String register_date2 = format;
		String update_date2 = format;
		String start_date2 = format;
		String stop_date2 = df.format(stopdate);
		
		String imgs = "";
		String agree = "";
		for (UploadModel um : upModel) {
				imgs += um.getUpload_name() + ";";
				agree += um.getAgreement_name() + ";";	
		}
		imgs = imgs.replace("null;", "");
		agree = agree.replace("null;", "");
		int i = houseDao.addHouse(imgs,agree,lock_name,groups, house, source, housenum,shi,ting,wei,
				net_house_provinces,net_house_street,net_house_addr,net_house_addr_name,net_house_addr_id,house_property_name,
				house_property_phone,house_property_id_type,house_property_id_num,
				house_property_type,house_rentout_type,house_source,net_house_data_psb_name,net_house_data_psb_id,net_house_data_local_police_id,
				net_house_data_local_police_name,house_type,house_num,house_acreage,toward,
				decoration,ceng,cengs,danyuan,rent,title,describes,net_house_id,operate_id,net_house_name,use_state,start_date,stop_date,register_date,update_date,net_house_provinces1,net_house_provinces2,net_house_provinces3
				);
		if(i > 0){
			uu.HouseUp(net_house_id, operate_id, net_house_name, start_date2, stop_date2, update_date2, register_date2, "正常", house_property_name, house_property_phone, house_property_id_type, house_property_id_num, house_property_type, house_rentout_type, house_source, net_house_provinces, net_house_street, net_house_addr, net_house_addr_name, net_house_addr_id, net_house_data_psb_id, net_house_data_psb_name, net_house_data_local_police_id, net_house_data_local_police_name, house_type, house_num, house_acreage);
			result = "success";
		}else{
			result= "fail";
		}
		return "success7";
	}
	
	
	/*
	 * 修改房源
	 */
	public String editHouse() throws Exception{
		upModel = dao.queryImg(net_house_id);
		net_house_provinces = net_house_provinces1 + net_house_provinces2 + net_house_provinces3;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		Date parse = df.parse(df.format(new Date()));
		long ts = parse.getTime();
		update_date = String.valueOf(ts);//更新时间
		
		String imgs = "";
		String agree = "";
		for (UploadModel um : upModel) {
				imgs += um.getUpload_name() + ";";
				agree += um.getAgreement_name() + ";";	
		}
		imgs = imgs.replace("null;", "");
		agree = agree.replace("null;", "");
		HouseModel hs = houseDao.queryById(id);
		houseDao.editHouse(id,hs.getImg()+imgs,hs.getAgreement()+agree,lock_name,groups, house, source, housenum,shi,ting,wei,
				net_house_provinces,net_house_street,net_house_addr,net_house_addr_name,net_house_addr_id,house_property_name,
				house_property_phone,house_property_id_type,house_property_id_num,
				house_property_type,house_rentout_type,house_source,net_house_data_psb_name,net_house_data_psb_id,net_house_data_local_police_id,
				net_house_data_local_police_name,house_type,house_num,house_acreage,toward,
				decoration,ceng,cengs,danyuan,rent,title,describes,net_house_name,update_date);
		return "backHouse";
	}
	
	/*
	 * 根据id查询实体  修改房源
	 */
	public String editHouseById(){
		houseModel = houseDao.queryById(id);
		ActionContext.getContext().getSession().put("houseModel", houseModel);
		return "editHouseById";
	}
	
	/*
	 * 下线请求
	 */
	public String houseDown() throws Exception{
		//通过房源id查询用户id
		houseModel = houseDao.queryById(id);
		CheckModel checkById = checkDao.findCheckById(houseModel.getNet_house_id());
		if(checkById == null && houseModel.getUse_state().equals("已上线")){
			//获取请求审核时间
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
			Date parse = df.parse(df.format(new Date()));
			long ts = parse.getTime();
			String start = String.valueOf(ts);//登记时间
			UserModel user = userDao.selectUser(houseModel.getOperate_id());
			UserAllModel userAll = userDao.selectUserAll(houseModel.getOperate_id());
			
			String contents = null;
			String states = houseModel.getUse_state();
			if(states.equals("未上线")){
				contents = "房源上线";
			}else{
				contents = "房源下线";
			}
			
			checkDao.addCheck2(userAll.getName(), user.getPhone(), contents, start, states, houseModel.getNet_house_id());
			result = "success";
		}else{
			result = "fail";
		}
		return SUCCESS;
	}
	
	//生成经营者房源二维码
	public String qrimg(){
		String filePath = ServletActionContext.getServletContext().getRealPath( "/qr_img");//得到当前的服务端的路径fileupload的路径；
    	System.out.println(filePath);
        QrUtil.qrcode(operate_id,filePath + "\\"+ CommUtil.getID()+".png");
		
		return SUCCESS;
	}
}
