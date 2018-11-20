package com.dhcc.bussiness.version;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class VersionDao {
	private static final Logger logger = Logger.getLogger(VersionDao.class);

	@SuppressWarnings("unchecked")
	public List<VersionModel> Versionnum() {
		List<VersionModel> list = new ArrayList<VersionModel>();
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select * from version where 1=1 order by createtime desc";
		 	list = dbm.getObjectList(VersionModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return list;
	}
}
