package com.dhcc.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.struts2.ServletActionContext;

import com.dhcc.common.util.CommUtil;

import net.sf.json.JSONObject;

public class QrUtil {
	    static String  APPID = "wx8bb762a70eb317f9";//自己的appid
	    static String  SECRET = "929fa731846821adfed3c6c255489a29";

	    public static String GetACCESS_TOKEN() {
	        String requestStr = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=SECRET";
	        requestStr = requestStr.replace("APPID",  APPID);
	        requestStr = requestStr.replace("SECRET",SECRET);
	        String oauth2_Token = HttpXmlClient.get(requestStr);
	        JSONObject jsonObject = new JSONObject();
	        jsonObject = JSONObject.fromObject(oauth2_Token);
	        return jsonObject.getString("access_token");
	    }
	    public static void qrcode(String scene,String filePath){
	        try
	        {
	            URL url = new URL("https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=" + GetACCESS_TOKEN());
	            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
	            httpURLConnection.setRequestMethod("POST");// 提交模式
	            // 发送POST请求必须设置如下两行
	            httpURLConnection.setDoOutput(true);
	            httpURLConnection.setDoInput(true);
	            // 获取URLConnection对象对应的输出流
	            PrintWriter printWriter = new PrintWriter(httpURLConnection.getOutputStream());
	            // 发送请求参数
	            JSONObject paramJson = new JSONObject();
	            paramJson.put("scene", scene);
	            paramJson.put("page", "pages/house/house");
	            paramJson.put("width", 430);
	            paramJson.put("auto_color", true);
	            printWriter.write(paramJson.toString());
	            // flush输出流的缓冲
	            printWriter.flush();
	            //开始获取数据
	            BufferedInputStream bis = new BufferedInputStream(httpURLConnection.getInputStream());
	            OutputStream os = new FileOutputStream(new File(filePath));
	            int len;
	            byte[] arr = new byte[1024];
	            while ((len = bis.read(arr)) != -1)
	            {
	                os.write(arr, 0, len);
	                os.flush();
	            }
	            os.close();
	        }
	        catch (Exception e)
	        {
	            e.printStackTrace();
	        }
	    }

	    public static void main(String[] args) {
	        //D:\house_img\abc.png
	    	String filePath = ServletActionContext.getServletContext().getRealPath( "/qr_img");//得到当前的服务端的路径fileupload的路径；
	    	System.out.println(filePath);
	        QrUtil.qrcode("040bb297c32e4d39b012c0c37737d4ac",filePath+CommUtil.getID()+".png");
	    }
}
