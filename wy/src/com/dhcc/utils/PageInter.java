package com.dhcc.utils;


public interface PageInter {
	
	/**
	 * @param querysql 查询sql
	 * @param pm 分页model
	 * @return 分页语句
	 */
   String createSql(String querysql,PageModel pm);
}
