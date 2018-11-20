package com.dhcc.bussiness.house;

import java.util.List;

import com.dhcc.common.database.DBManager;

public class UploadDao {
	public int insertHouseImg(String id, String newsfileName) {
		int i = 0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "insert into wy_upload(fy_id,upload_name) values('" + id + "','" + newsfileName + "')";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}
	
	public int insertHouseAgreement(String id, String newsfileName) {
		int i = 0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "insert into wy_upload(fy_id,agreement_name) values('" + id + "','" + newsfileName + "')";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}
	
	
	/*
	 * 查询上传信息
	 */
	public List<UploadModel> queryImg(String fy_id) {
		DBManager dbm = null;
		List<UploadModel> model = null;
		try {
			dbm = new DBManager();
			String sql = "select * from wy_upload where fy_id = '"
					+ fy_id + "'";
			model = dbm.getObjectList(UploadModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return model;
	}
	
	
	
}