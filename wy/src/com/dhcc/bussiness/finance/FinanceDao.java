package com.dhcc.bussiness.finance;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class FinanceDao {
	private static final Logger logger = Logger.getLogger(FinanceDao.class);
	
	/**
	 * 更新房间状态
	 * @param id
	 * @return
	 */
	public boolean updateHomeState(Integer id,String housestate){
		DBManager dbm = new DBManager();
		int flag = 0;
		try {
			String updatesql = "update house set housestate='"+ housestate +"'  where id = '"+ id +"'";
			flag = dbm.executeUpdate(updatesql);
		} catch (Exception e) {
			logger.info(e);
			return false;
		}finally{
			dbm.close();
		}
		if(flag > 0){
			return true;
		}
		return false;
	}
}

