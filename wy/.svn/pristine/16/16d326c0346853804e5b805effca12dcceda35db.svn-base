package com.dhcc.bussiness;

import com.dhcc.common.database.DBManager;

public class UploadDao {
	public int updateUserImg(String id, String newsfileName) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "update user_all set head_img = '"+ newsfileName +"' where 1=1 and uid = '"+ id +"'";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}
}