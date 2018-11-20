package com.dhcc.bussiness;

public class GetRandom {
	
	public static String getSmsRandom(){
		String code="";
	    long[] n={0,1,2,3,4,5,6,7,8,9};
			for(int i=0;i<=5;i++){
				int index = (int) Math.round(Math.random()*10);
				if(index==10){
					index=0;
				}
				code +=n[index];
			}
		return code;
	}
	
}
