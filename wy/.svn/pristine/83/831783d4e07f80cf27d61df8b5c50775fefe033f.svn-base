package com.dhcc.utils;



/**
 * Oracle
 * @author GYR
 *
 */
public class OracleFactory implements PageInter{

	@Override
	public String createSql(String querysql, PageModel pm) {
	String sql = "SELECT * FROM " +
			     "(SELECT a.*,ROWNUM  rn from ("+querysql+")a " +
	     		 "where  ROWNUM<="+pm.getPerPage()*pm.getCurrentPage()+") " +
 		 		 "where rn>"+(pm.getCurrentPage()-1)*pm.getPerPage()+"";
		return sql;
	}


}
