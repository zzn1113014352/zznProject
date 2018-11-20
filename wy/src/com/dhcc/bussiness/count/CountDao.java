package com.dhcc.bussiness.count;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class CountDao {
	private static final Logger logger = Logger.getLogger(CountDao.class);

	public List<CountModel> querycoutDetails(String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<CountModel> count = null;
		try {
			dbm = new DBManager();
			String sql = "select h.source as source,o.start as start,o.stop as stop,o.money as money from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '" + operate_id + "' limit " + pageNumber + ","+ pageSize +";";
			count = dbm.getObjectList(CountModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	/*
	 * 查询总条数
	 */
	public Integer queryCount(String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '" + operate_id + "'";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
}
