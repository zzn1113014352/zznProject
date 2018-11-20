package com.dhcc.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	public static long toTime() {
		return new Date().getTime();
	}

	public static long toTime(String date) {
		date=date.trim();
		try {
			if (date.length() == 19)
				return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date).getTime();
			if (date.length() == 16)
				return new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(date).getTime();
			if (date.length() == 13)
				return new SimpleDateFormat("yyyy-MM-dd HH").parse(date).getTime();
			if (date.length() == 10)
				return new SimpleDateFormat("yyyy-MM-dd").parse(date).getTime();
			if (date.length() == 7)
				return new SimpleDateFormat("yyyy-MM").parse(date).getTime();

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	public static long  yearMonthTime(String str){
		long time = toTime(str);
		String strtime = new SimpleDateFormat("yyyy-MM").format(time);
		try {
			time=new SimpleDateFormat("yyyy-MM").parse(strtime).getTime();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return time;
	}
	public static String toDate(long time) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(time);
		return formatter.format(calendar.getTime());
	}
	public static void main(String[] args) {
	    long time = yearMonthTime("2016-04-28");
		System.out.println(time);
	}
}
