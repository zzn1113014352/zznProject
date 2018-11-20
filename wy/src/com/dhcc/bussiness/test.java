package com.dhcc.bussiness;

import java.util.Random;

public class test {
	public static void main(String[] args) throws Exception {
//		String s = "2018-11-13 14:23:02";
//		Date parseDate = DateUtils.parseDate(s,new String[] {"yyyy-MM-dd HH:mm:ss"});
//		String format = DateFormatUtils.format(parseDate, "yyyyMMddHHmmss");
//		System.out.println(format);
	
		String str = "987162";
		String Oauth_code="";
		while(str.equals("987162")){
			Random random = new Random();
			
			for (int i=0;i<6;i++)
			{
				Oauth_code+=random.nextInt(10);
			}
		}
		System.out.println(Oauth_code);
	}
}
