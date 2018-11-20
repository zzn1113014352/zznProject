package com.dhcc.bussiness.sdk;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import net.sf.json.JSONObject;

import org.aiav.aptoassdk.constants.EEncryptType;
import org.aiav.aptoassdk.constants.ESignType;

import cn.eidop.sdk.SdkServiceExtension;
import cn.eidop.sdk.pojo.parameter.HouseInfo;
import cn.eidop.sdk.pojo.parameter.OperateInfo;
import cn.eidop.sdk.pojo.parameter.OrderInfo;
import cn.eidop.sdk.pojo.parameter.RequestInfoParams;
import cn.eidop.sdk.pojo.result.HouseResult;
import cn.eidop.sdk.pojo.result.OperateResult;
import cn.eidop.sdk.pojo.result.OrderResult;

public class UpUtils {
	private	static String version = "1.0.0";
	private static String AppId = "0ESJ1808231630140627";
	private static String AppKey = "37A9A49186D14C51924942467EF93BB4";
	private static String urlOperateInfoIp = "http://eidop.com:9000/saveOperateInfo/";
	private static String urlHouseInfoIp = "http://eidop.com:9000/saveHouseInfo/";
	private static String urlOrderInfoIp = "http://eidop.com:9000/saveOrderInfo/";
	
	
	public void BossUp(String Operate_id,Integer Operate_type,String Operate_name,String Operate_id_type,String Operate_id_num,
			String Operate_phone,String Operate_addr){
		//公共参数
		RequestInfoParams requestInfoParams = new RequestInfoParams();
		requestInfoParams.setVersion(version);
		requestInfoParams.setAppId(AppId);
		requestInfoParams.setAppkey(AppKey);
		requestInfoParams.setBizSequenceId(UUID.randomUUID().toString().replace("-", ""));
		requestInfoParams.setEncryptType(EEncryptType.SM4_ECB_PKCS5PADDING);
		requestInfoParams.setSignType(ESignType.HMAC_SM3);

		//经营者上报信息
		OperateInfo operateInfo = new OperateInfo();
		operateInfo.setOperate_id(Operate_id);	//经营者编码	String   非空项   平台生成  此参数为空为新增操作，否则为修改操作
		operateInfo.setOperate_type(Operate_type);	//经营者类型	int	1.自然人  2企业
		operateInfo.setOperate_name(Operate_name);	//经营责任人姓名	String
		operateInfo.setOperate_id_type(Operate_id_type);	//经营责任人证件种类	String
		operateInfo.setOperate_id_num(Operate_id_num);	//经营责任人证件号码	String
		operateInfo.setOperate_phone(Operate_phone);	//经营责任人联系电话	String
		operateInfo.setOperate_addr(Operate_addr);	//经营责任人实际居住地址	String

		//经营者上报信息放入请求参数中
		requestInfoParams.setOperateInfo(operateInfo);
		String urlOperateInfo = urlOperateInfoIp + requestInfoParams.getAppId();
		OperateResult operateResult = null;
		
		try {
		    operateResult = (OperateResult) SdkServiceExtension.requestInfoCheck(requestInfoParams, urlOperateInfo);
		} catch (IllegalAccessException e) {
		    e.printStackTrace();
		}
		System.out.println("经营者最终响应结果=" + operateResult);
	}
	
	public void HouseUp(String Net_house_id,String Operate_id,String Net_house_name,String Start_date,String Stop_date,String Update_date,
			String Register_date,String Use_state,String House_property_name,String House_property_phone,String House_property_id_type,
			String House_property_id_num,Integer House_property_type,Integer House_rentout_type,Integer House_source,String Net_house_provinces,
			String Net_house_street,String Net_house_addr,String Net_house_addr_name,String Net_house_addr_id,String Net_house_data_psb_id,
			String Net_house_data_psb_name,String Net_house_data_local_police_id,String Net_house_data_local_police_name,String House_type,
			String House_num,String House_acreage){
		RequestInfoParams requestInfoParams = new RequestInfoParams();
		requestInfoParams.setVersion(version);
		requestInfoParams.setAppId(AppId);
		requestInfoParams.setAppkey(AppKey);
		requestInfoParams.setBizSequenceId(UUID.randomUUID().toString().replace("-", ""));
		requestInfoParams.setEncryptType(EEncryptType.SM4_ECB_PKCS5PADDING);
		requestInfoParams.setSignType(ESignType.HMAC_SM3);
		//房源上报信息
		HouseInfo houseInfo = new HouseInfo();
		houseInfo.setNet_house_id(Net_house_id);     //网约房编码
		houseInfo.setOperate_id(Operate_id);			//经营者编码
		houseInfo.setNet_house_name(Net_house_name);		//网约房名称
		houseInfo.setStart_date(Start_date);	//启用日期    date
		houseInfo.setStop_date(Stop_date);	//停用日期	date
		houseInfo.setUpdate_date(Update_date);	//更新时间	date
		houseInfo.setRegister_date(Register_date);	//登记时间	date
		houseInfo.setUse_state(Use_state);	//使用状态	String
		houseInfo.setHouse_property_name(House_property_name);		//房屋产权人姓名	String
		houseInfo.setHouse_property_phone(House_property_phone);	//房屋产权人联系电话	String
		houseInfo.setHouse_property_id_type(House_property_id_type);	//房屋产权人证件种类	String
		houseInfo.setHouse_property_id_num(House_property_id_num);	//房屋产权人证件号码	String
		houseInfo.setHouse_property_type(House_property_type);	//房屋产权人类型	int	1.自然人   2.企业
		houseInfo.setHouse_rentout_type(House_rentout_type);	//出租类型	int 1. 整租  2.分租  9.其它
		houseInfo.setHouse_source(House_source);	//房屋来源	int	1.转租  2.自营
		houseInfo.setNet_house_provinces(Net_house_provinces);	//省市县(区) String
		houseInfo.setNet_house_street(Net_house_street);	//街路巷（小区）	String
		houseInfo.setNet_house_addr(Net_house_addr);		//区划内详细地址	String
		houseInfo.setNet_house_addr_name(Net_house_addr_name);		//地址名称	String
		houseInfo.setNet_house_addr_id(Net_house_addr_id);	//网约房地址编码	String
		houseInfo.setNet_house_data_psb_id(Net_house_data_psb_id);	//网约房所属县（市、区）公安局代码	String
		houseInfo.setNet_house_data_psb_name(Net_house_data_psb_name);	//网约房所属县（市、区）公安局名称	String
		houseInfo.setNet_house_data_local_police_id(Net_house_data_local_police_id);	//网约房所属派出所代码	String
		houseInfo.setNet_house_data_local_police_name(Net_house_data_local_police_name);	//网约房所属派出所名称	String
		houseInfo.setHouse_type(House_type);	//房屋类别	String
		houseInfo.setHouse_num(House_num);	//房屋间数	String
		houseInfo.setHouse_acreage(House_acreage);	//房屋面积_面积(平方米)	String
		//房源上报信息放请求参数中
		requestInfoParams.setHouseInfo(houseInfo);
//		http://eidop.com:9000/...
//		String urlHouseInfo = "https://ip:443/saveHouseInfo/"+requestInfoParams.getAppId();
		String urlHouseInfo = urlHouseInfoIp + requestInfoParams.getAppId();
		HouseResult houseResult = null;
		try {
		    houseResult = (HouseResult) SdkServiceExtension.requestInfoCheck(requestInfoParams, urlHouseInfo);
		} catch (IllegalAccessException e) {
		    e.printStackTrace();
		}
		System.out.println("房源最终响应结果=" + houseResult);
	}
	
	public static String CodeUp(String code){
		//公共参数
		RequestInfoParams requestInfoParams = new RequestInfoParams();
		requestInfoParams.setVersion(version);
		requestInfoParams.setAppId(AppId);
		requestInfoParams.setAppkey(AppKey);
		requestInfoParams.setBizSequenceId(UUID.randomUUID().toString().replace("-", ""));
		requestInfoParams.setEncryptType(EEncryptType.SM4_ECB_PKCS5PADDING);
		requestInfoParams.setSignType(ESignType.HMAC_SM3);
		//授权码信息放入请求参数中
		requestInfoParams.setOauth_code(code);
		String string = "";
		try {
		    JSONObject object = SdkServiceExtension.oauthCodeCheck(requestInfoParams);
		    System.out.println(object);
		    string = object.toString();
		} catch (IllegalAccessException e) {
		    e.printStackTrace();
		}
		return string;
	}
	
	public static void OrderUp(String Order_id,String Oauth_code,String Net_house_id,String Orders_date,String Reside_date
			,String Reside_retreat_date,String Update_date
			){
		//公共参数
		RequestInfoParams requestInfoParams = new RequestInfoParams();
		requestInfoParams.setVersion(version);
		requestInfoParams.setAppId(AppId);
		requestInfoParams.setAppkey(AppKey);
		requestInfoParams.setBizSequenceId(UUID.randomUUID().toString().replace("-", ""));
		requestInfoParams.setEncryptType(EEncryptType.SM4_ECB_PKCS5PADDING);
		requestInfoParams.setSignType(ESignType.HMAC_SM3);
		//订单上报信息
		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setOrder_id(Order_id);	//订单编码	String 非空项
		orderInfo.setOauth_code(Oauth_code);	//授权码	String
		orderInfo.setNet_house_id(Net_house_id);	//网约房编码	String
		String bizTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		orderInfo.setOrders_date(Orders_date);	//下单时间	String	时间，格式为yyyyMMddHHmmss
		orderInfo.setReside_date(Reside_date);	//预定入住日期	String	时间，格式为yyyyMMddHHmmss
		orderInfo.setReside_retreat_date(Reside_retreat_date);	//拟退房日期	String 时间，格式为yyyyMMddHHmmss
		orderInfo.setUpdate_date(Update_date);	//更新时间	String	时间，格式为yyyyMMddHHmmss
		
	/*	orderInfo.setReserve_phone(reserve_phone);
		orderInfo.setReserve_name("杨广渊");
		orderInfo.setReserve_id_type("身份证");
		orderInfo.setReserve_id_num("111111111111111111");
		orderInfo.setReserve_phone("13261226652");*/
		//订单上报信息放在请求参数中
		requestInfoParams.setOrderInfo(orderInfo);
		String urlOrderInfo = urlOrderInfoIp + requestInfoParams.getAppId();
		OrderResult orderResult = null;
		try {
		    orderResult = (OrderResult) SdkServiceExtension.requestInfoCheck(requestInfoParams, urlOrderInfo);
		} catch (IllegalAccessException e) {
		    e.printStackTrace();
		}
		System.out.println("订单最终响应结果=" + orderResult);
	}
	
}
