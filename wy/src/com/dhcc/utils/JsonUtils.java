package com.dhcc.utils;

import java.util.ArrayList;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonUtils {
	@SuppressWarnings("static-access")
	public static JSONObject getJSON(Object obj,String status,String desc){
		 JSONObject json=new JSONObject();
		 if(obj instanceof ArrayList ){
			 JSONArray jsons =new JSONArray();
			  jsons =jsons.fromObject(obj); 
			  json.put("data", jsons); 
		 }else{
			  JSONObject json0=new JSONObject();
			  try{
			  json0 =json0.fromObject(obj);
			  }catch(Exception e){
			  json0=json0.fromObject("{}");
			  }
			  json.put("data", json0); 
		 }
		 json.put("status", status); 
		 json.put("desc", desc);
		   return json;
	}
	
	@SuppressWarnings("static-access")
	public static JSONObject getJSONPage(Object obj,Integer total, Integer currentPage,String status,String desc){
		 JSONObject json=new JSONObject();
		 if(obj instanceof ArrayList ){
			  JSONArray jsons =new JSONArray();
			  jsons =jsons.fromObject(obj); 
			  json.put("data", jsons); 
		 }else{
			  JSONObject json0=new JSONObject();
			  try{
			  json0 =json0.fromObject(obj);
			  }catch(Exception e){
			  json0=json0.fromObject("{}");
			  }
			  json.put("data", json0); 
		 }
		 json.put("totalPage", total); 
		 json.put("currentPage", currentPage);
		 json.put("status", status); 
		 json.put("desc", desc);
		   return json;
	}
}
