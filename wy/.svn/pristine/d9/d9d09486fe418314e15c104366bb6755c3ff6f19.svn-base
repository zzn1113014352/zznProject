package com.dhcc.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.http.HttpRequest;


public class HtmlUtil {
	
     
     public static void main(String[] args) throws Exception {
    	 URL url = new URL("http://localhost:8080/wy/index.jsp");
    	 Object content = url.getContent().toString();
    	/* HttpURLConnection conn = (HttpURLConnection)url.openConnection();
    	 InputStream inputStream = conn.getInputStream(); //通过输入流获得网站数据
    	 byte[] getData = readInputStream(inputStream); //获得网站的二进制数据
    	 String data = new String(getData, "utf-8");
    	 System.out.println(data);*/
    	 System.out.println(content);
	}
     
     public static byte[] readInputStream(InputStream inputStream) throws IOException {
    	 byte[] buffer = new byte[1024];
    	 int len = 0;
    	 ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	 while((len = inputStream.read(buffer)) != -1) {
    	 bos.write(buffer, 0, len);
    	 }
    	 bos.close();
    	 return bos.toByteArray();
     }
}
