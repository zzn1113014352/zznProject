package com.dhcc.common.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dhcc.common.database.DBManager;

/**
 * 
 * @Company: ccsoft
 * @decription:产生下来框
 */
public class SelectUtil {
	
	public static String returnSelect(String id,String name,String tablename,String whereSql,String option,String value,boolean allowBlank,String... additional) {
		DBManager dbm = new DBManager();
		boolean addFlag = (additional!=null&&additional.length!=0);
		String sql = "select "+id+","+name+" from "+tablename+" "+whereSql;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();
		if(allowBlank) {
			sb.append("<option value='"+option+"'>"+value+"</option>");
		}
		try{
			rs = dbm.executeQuery(sql);
			while(rs.next()){
				sb.append("<option value='")
				.append(rs.getString(id)+"'");
				if(addFlag && rs.getString(id).equals(additional[0])) {
					sb.append(" selected");
				}
				sb.append(">")
				.append(rs.getString(name))
				.append("</option>");
			}
			return sb.toString();
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			dbm.close();
		}
		return sb.toString();
	}
	/**
	 * 数据字典返回name
	 * @param type
	 * @param typecode
	 * @param code
	 * @return
	 */
	public static String getNameByCode(String dtype,String dkey) {
		String name = "";
		DBManager dbm = new DBManager();
		String sql = "select dvalue from tcdict where dtype = '"+dtype+"' and dkey='"+dkey+"'";
		ResultSet rs = null;
		try {
			rs = dbm.executeQuery(sql);
			while(rs.next()){
				name = rs.getString("dvalue");
			}
			rs.close();
			return name;
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return name;
	}
	/**
	 * @author pucq 20120227
	 * @param type	主要有code（码表类型） enum（枚举类型） xml（xml文件类型）等 目前只做了code类型 其他的以后可扩展
	 * @param typecode	可以是码表类型的编码值，枚举类型的类名称，也可以使xml文件中的节点名称 目前只做了第一种
	 * @param allowBlank 返回的下拉列表是否允许有空值 如果允许则传入true，否则传入false
	 * @param additional 保留参数
	 * @return
	 * 根据传入的值类型和码表类型的值 在码表明细中获取该值对应的码表明细的详细值并以下拉列表的形式返回
	 */
	public static String returnSelect(String type,String typecode,boolean allowBlank,String... additional) {
		StringBuilder sb = new StringBuilder();
		boolean addFlag = (additional!=null&&additional.length!=0);
		if(allowBlank) {
			sb.append("<option value=''>请选择</option>");
		}
		if("code".equals(type)){
			DBManager dbm = new DBManager();
			String sql = "select tc.dkey as id,tc.dvalue as text from tcdict tc where tc.dtype='"+typecode+"'"
						+ " order by tc.dkey";
			ResultSet rs = null;
			try{
				rs = dbm.executeQuery(sql);
				while(rs.next()){
					sb.append("<option value='")
					.append(rs.getString("id")+"'");
					if(addFlag && rs.getString("id").equals(additional[0])) {
						sb.append(" selected");
					}
					sb.append(">")
					.append(rs.getString("text"))
					.append("</option>");
				}
				rs.close();
				return sb.toString();
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				dbm.close();
			}
		}
		return sb.toString();
	}
	public static String returnSelect(String id,String name,String tablename,String whereSql,boolean allowBlank,String... additional) {
		DBManager dbm = new DBManager();
		boolean addFlag = (additional!=null&&additional.length!=0);
		String sql =null;
		if(tablename!=null && tablename.equals("oss_domin"))
		{
			sql="select * from "+tablename;
		}
		else 
		{
			sql = "select "+id+","+name+" from "+tablename;
		}
		
		if(isNotBlank(whereSql)) {
			sql += " "+whereSql;
		}
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();
		if(allowBlank) {
			sb.append("<option value=''>请选择</option>");
		}
		try{
			rs = dbm.executeQuery(sql);
			while(rs.next()){
				sb.append("<option value='")
				.append(rs.getString(id)+"'");
				if(addFlag && rs.getString(id).equals(additional[0])) {
					sb.append(" selected");
				}
				sb.append(">")
				.append(rs.getString(name))
				.append("</option>");
			}
			return sb.toString();
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			dbm.close();
		}
		return sb.toString();
	}
	/**
	 * @author pucq 20120223
	 * @param str
	 * @return
	 * 判断一个字符串是否不为空 不为空则返回true
	 */
	public static boolean isNotBlank(String str) {
		return str!=null&&!"".equals(str);
	}
}
