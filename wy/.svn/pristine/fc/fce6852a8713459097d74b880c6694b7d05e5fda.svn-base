package com.dhcc.bussiness.orderstate;

import java.util.List;
import org.apache.log4j.Logger;
import com.dhcc.common.database.DBManager;

public class OrderStateDao {
	private static final Logger logger = Logger.getLogger(OrderStateDao.class);
	
	/*
	 * 查询所有订单状态
	 */
	public List<OrderStateModel> selectOpcAll() {
		DBManager dbm = null;
		List<OrderStateModel> OsModel = null;
		try {
			dbm = new DBManager();
			String sql = "select id,statename from orderstate";
			OsModel = dbm.getObjectList(OrderStateModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OsModel;
	}
	
	
}
