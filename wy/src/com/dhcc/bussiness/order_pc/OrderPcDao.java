package com.dhcc.bussiness.order_pc;

import java.util.List;
import org.apache.log4j.Logger;
import com.dhcc.common.database.DBManager;

public class OrderPcDao {
	private static final Logger logger = Logger.getLogger(OrderPcDao.class);

	/*
	 * 查询所有平台
	 */
	public List<OrderPcModel> selectOpcAll() {
		DBManager dbm = null;
		List<OrderPcModel> OpcModel = null;
		try {
			dbm = new DBManager();
			String sql = "select id,pcname from orderpc";
			OpcModel = dbm.getObjectList(OrderPcModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OpcModel;
	}
	
	
}
