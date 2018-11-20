package com.dhcc.bussiness.login;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.exceptions.ClientException;
import com.dhcc.bussiness.GetRandom;
import com.dhcc.bussiness.User.UserModel;
import com.dhcc.bussiness.inforSet.InforSetDao;
import com.dhcc.bussiness.sdk.UpUtils;
import com.dhcc.common.util.CommUtil;
import com.dhcc.utils.MakeCertPic;
import com.dhcc.utils.Send;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(LoginAction.class);
	public String userid="";
	public String password="";
	public String msg="";//登陆失败的信息
	public String msg2="";
	public InitUserModel inituser;//用户所有信息
	private String nickname_s;
	private String idcard_s;
	private String name_s;
	private String sex;
	private String phone_s;
	private String district;
	private String email_s;
	private String news_password;//新密码
	public static String account = "N9728120";
	public static String pswd = "hwkSmpC8U";
	private String phoneNum;
	private int isRememberUsername;
	private String newname;
	private String valiCode;//验证码
	private String operate_id;//经营者编码
	private Integer operate_type;//经营者类型	int	1.自然人  2企业
	private String operate_name;//经营责任人姓名
	private String operate_id_type;//经营责任人证件种类
	private String operate_id_num;//经营责任人证件号码
	private String operate_phone;//经营责任人联系电话
	private String operate_addr;//经营责任人实际居住地址
	private UpUtils uu = new UpUtils();
	private InforSetDao inforSetDao;
	
	
	

	public String getOperate_id() {
		return operate_id;
	}

	public void setOperate_id(String operate_id) {
		this.operate_id = operate_id;
	}

	public Integer getOperate_type() {
		return operate_type;
	}

	public void setOperate_type(Integer operate_type) {
		this.operate_type = operate_type;
	}

	public String getOperate_name() {
		return operate_name;
	}

	public void setOperate_name(String operate_name) {
		this.operate_name = operate_name;
	}

	public String getOperate_id_type() {
		return operate_id_type;
	}

	public void setOperate_id_type(String operate_id_type) {
		this.operate_id_type = operate_id_type;
	}

	public String getOperate_id_num() {
		return operate_id_num;
	}

	public void setOperate_id_num(String operate_id_num) {
		this.operate_id_num = operate_id_num;
	}

	public String getOperate_phone() {
		return operate_phone;
	}

	public void setOperate_phone(String operate_phone) {
		this.operate_phone = operate_phone;
	}

	public String getOperate_addr() {
		return operate_addr;
	}

	public void setOperate_addr(String operate_addr) {
		this.operate_addr = operate_addr;
	}

	public String getValiCode() {
		return valiCode;
	}

	public void setValiCode(String valiCode) {
		this.valiCode = valiCode;
	}

	public String getMsg2() {
		return msg2;
	}

	public void setMsg2(String msg2) {
		this.msg2 = msg2;
	}

	public String getNewname() {
		return newname;
	}

	public void setNewname(String newname) {
		this.newname = newname;
	}

	public LoginDao dao = new LoginDao();
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public InitUserModel getInituser() {
		return inituser;
	}
	public void setInituser(InitUserModel inituser) {
		this.inituser = inituser;
	}
	public String getNickname_s() {
		return nickname_s;
	}
	public void setNickname_s(String nickname_s) {
		this.nickname_s = nickname_s;
	}
	public String getIdcard_s() {
		return idcard_s;
	}
	public void setIdcard_s(String idcard_s) {
		this.idcard_s = idcard_s;
	}
	public String getName_s() {
		return name_s;
	}
	public void setName_s(String name_s) {
		this.name_s = name_s;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone_s() {
		return phone_s;
	}
	public void setPhone_s(String phone_s) {
		this.phone_s = phone_s;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getEmail_s() {
		return email_s;
	}
	public void setEmail_s(String email_s) {
		this.email_s = email_s;
	}
	public String getNews_password() {
		return news_password;
	}
	public void setNews_password(String news_password) {
		this.news_password = news_password;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public static String getPswd() {
		return pswd;
	}
	public static void setPswd(String pswd) {
		LoginAction.pswd = pswd;
	}
	
	
	public int getIsRememberUsername() {
		return isRememberUsername;
	}
	public void setIsRememberUsername(int isRememberUsername) {
		this.isRememberUsername = isRememberUsername;
	}
	//获取验证码
	public String valiCodeImg() {
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		HttpSession session = request.getSession();
		try {
			//获取验证码
			String	code = MakeCertPic.getCertPic(0, 0, response.getOutputStream(),4 );
			//将验证码存放到session中
			session.setAttribute("valiCode", code);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	//登录
	public String loginUser(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(valiCode!=null&& session.getAttribute("valiCode")!=null) {
			if(valiCode.equals(session.getAttribute("valiCode"))) {
				BossModel model = dao.loginUser(operate_phone,password);
				if(model != null){
					this.setMsg("LOGINSUCCESS");
					System.out.println("获取的用户id："+model.getOperate_id());
					System.out.println("获取的用户手机号："+model.getOperate_phone());
					ActionContext.getContext().getSession().put("userid",model.getOperate_id());
					ActionContext.getContext().getSession().put("username",model.getOperate_phone());
					//前台接收
					//ActionContext.getContext().getSession().put("userid_s",model.getPhone());
				}else{
					this.setMsg("LOGINERROR");
				}	
				
			}else{
				this.setMsg2("YANERROR");
				
			}
			
		}
		return SUCCESS;
	}
	public  String remberUsername(){
		if(isRememberUsername==1){
			HttpServletResponse response = ServletActionContext.getResponse();
			Cookie user = new Cookie("name", userid);
			user.setMaxAge(7 * 60 * 24 * 30);
			response.addCookie(user);
		}else if(isRememberUsername==0){
			HttpServletResponse response = ServletActionContext.getResponse();
			Cookie user = new Cookie("name", userid);
			user.setMaxAge(0);
			response.addCookie(user);
		}
		return SUCCESS;
	}
	
	//获取随机码
	public String gainRandom() throws Exception{
		System.out.println(phoneNum + "======123");
		GetRandom gr = new GetRandom();
		String str = gr.getSmsRandom();
		Send.sendCode(phoneNum, str);
		msg = str;
		//msg="123456";
		return SUCCESS;
	}
	
	//找回密码登录
	public String updateUser(){
		BossModel model = dao.queryUser(operate_phone);
			if(model != null){
				logger.info("====手机用户存在，开始更新====");
				int i =  dao.updateUser(operate_phone,password);
				if(i>0){
				ActionContext.getContext().getSession().put("userid",model.getOperate_id());
				ActionContext.getContext().getSession().put("username",operate_phone);
				this.setMsg("LOGINSUCCESS");
				}else{
					this.setMsg("LOGINERROR");
				}	
			}else{
				logger.info("====手机用户不存在====");
				this.setMsg("LOGINPHONEERROR");//手机用户不存在
			}
		return SUCCESS;
	}
	
	//注册新用户
	public String regUser(){
		BossModel model = dao.queryUser(operate_phone);
			if(model != null){
				logger.info("====手机用户存在，不能注册====");
				this.setMsg("LOGINPHONEERROR");
			}else{
				logger.info("====手机用户不存在，开始注册====");
				operate_id= CommUtil.getID();//生成一个用户ID
				
				int i =  dao.regUser(operate_id, operate_type, operate_name, operate_id_type, operate_id_num, operate_phone, operate_addr,password);
				uu.BossUp(operate_id, operate_type, operate_name, operate_id_type, operate_id_num, operate_phone, operate_addr);
				inforSetDao.regInfor(operate_id);
				if(i>0){
					int j =  dao.regUserALL(operate_id);
					if(j>0){
						this.setMsg("LOGINSUCCESS");
						ActionContext.getContext().getSession().put("userid",operate_id);
						ActionContext.getContext().getSession().put("username",operate_phone);
					}else{
						this.setMsg("LOGINERROR");
					}
				}else{
					this.setMsg("LOGINERROR");
				}
			}
		return SUCCESS;
	}
	
	public String initUser(){
		userid=ActionContext.getContext().getSession().get("userid").toString();
		BossModel model=dao.queryUserId(userid);
		String user_phone = "";//用户的手机号
		if(model != null){
			user_phone = model.getOperate_phone();
			inituser = dao.queryUserALL(userid);
			inituser.setPhone(user_phone);
		}else{
			logger.info("不做任何操作");
		}
		return SUCCESS;
	}
	
	public String upadteUserAllRE(){
		userid=ActionContext.getContext().getSession().get("userid").toString();
	 	int i = dao.upadteUserAllRE(userid,nickname_s,idcard_s,name_s,sex,district,email_s,phone_s);
	 	System.out.println(i);
	 	if(i>0){
	 		msg = "success";
	 	}
		return SUCCESS;
	}
	
	public String gainData(){
		userid=ActionContext.getContext().getSession().get("userid").toString();
		BossModel m=dao.queryUserId(userid);
	 	if(m != null){
	 		msg = m.getPassword();
	 	}
		return SUCCESS;
	}
	
	public String updateUserInfo(){
		int i = dao.updateUserInfo(userid,news_password);
		if(i>0){
			msg = "success";
		}
		return SUCCESS;
		
	}
	
}