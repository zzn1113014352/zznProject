package com.dhcc.bussiness.notice;

import java.util.ArrayList;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		//模拟选中数据
		gainXz(4);
	}

	//查询默认页码
	
	
	
	private static List<Integer> gainXz(int str) {
		List<Integer> yuanshi_list = new ArrayList<Integer>();
		List<Integer> gaibian_list = new ArrayList<Integer>();
		yuanshi_list.add(1);
		yuanshi_list.add(2);
		yuanshi_list.add(3);
		for (int i = 0; i < yuanshi_list.size(); i++) {
			int ys = yuanshi_list.get(i);
			if(str == ys){
				//如果最大的数在集合中存在，多加两个数
				int str1 = str+1;
				int str2 = str+2;
				gaibian_list.add(str);
				gaibian_list.add(str1);
				gaibian_list.add(str2);
			}
		}
		
		//拿到最终改变的值
		for (int i = 0; i < gaibian_list.size(); i++) {
		 	int gb = gaibian_list.get(i);
		 	System.out.println(gb + "=====7676");
		}
		return yuanshi_list;
	}
}
