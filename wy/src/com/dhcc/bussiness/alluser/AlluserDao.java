package com.dhcc.bussiness.alluser;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;
import com.dhcc.common.database.DBManager_;
import com.dhcc.common.util.StringUtil;

public class AlluserDao {
	private static final Logger logger = Logger.getLogger(AlluserDao.class);
	public Integer queryCount() {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from wy_boss where 1=1";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	/*
	 * 查询所有分配的权限用户
	 */
	@SuppressWarnings("unchecked")
	public List<All_userModel> findAlluserByPage(Integer pageNumber,Integer pageSize, String s_data) {
		DBManager_ dbm = null;
		List<All_userModel> list = null;
		try {
			dbm = new DBManager_();
			String sql = "select u.u_id as id,u.u_name as name,u.u_card as idcard,u.u_phone as phone,FROM_UNIXTIME(u.u_time/1000,'%Y-%m-%d %H:%i:%s') as c_time,"
					+ " u.rz_status as shenfen_renzheng from user u where 1=1 ";
					if(!StringUtil.isNullOrEmpty(s_data)){
						sql += " and u.u_name = '"+ s_data +"' or u.u_phone = '"+ s_data +"' or u.u_card = '"+ s_data +"'";
					}
					sql += " order by u.u_time desc limit " + pageNumber + ","+ pageSize +"";
			list = dbm.getObjectList(All_userModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return list;
	}


	public int delAlluserId(String _id) {
		int i =0;
		DBManager_ dbm = null;
		try{
			dbm = new DBManager_();
			String sql = "delete from user where u_id = '"+ _id +"'";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public String user_sDel(String id) {
		String sql = "";
		DBManager_ dbm = null;
		try {
			dbm = new DBManager_();
				sql = "delete from user where u_id='" + id + "'";
				dbm.addBatch(sql);
			dbm.executeBatch();
		} catch (Exception e) {
			logger.error("删除--失败",e);
			return "error";
		} finally {
			dbm.close();
		}
		return "success";
	}

	public int insert_WyfUser(String username, String idcard,
			String lianxifangshi) {
		int i =0;
		DBManager_ dbm = null;
		try{
			dbm = new DBManager_();
			String sql = "insert into user(u_name,u_card,u_phone,u_stay,u_time,rz_status) values('"+ username +"','"+ idcard +"',"
					+ "'"+ lianxifangshi +"',0,"+ System.currentTimeMillis() +",'0')";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public All_userModel queryAlluser(String username, String idcard,
			String lianxifangshi) {
		All_userModel model = null;
		DBManager_ dbm = null;
		try{
			dbm = new DBManager_();
			String sql = "select u_name as name,u_card as idcard, u_phone as phone from user where u_name = '"+ username +"' and u_card = '"+ idcard +"'"
					+ " and u_phone = '"+ lianxifangshi +"'";
			model = (All_userModel) dbm.getObject(All_userModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int update_WyfUser(String username, String idcard,
			String lianxifangshi,String id) {
		int i =0;
		DBManager_ dbm = null;
		try{
			dbm = new DBManager_();
			String sql = "update user set u_name = '"+ username +"',u_card = '"+ idcard +"',u_phone = '"+ lianxifangshi +"' where u_id = '"+ id +"'";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public All_userModel findAlluserByPageId(String id) {
		All_userModel model = null;
		DBManager_ dbm = null;
		try{
			dbm = new DBManager_();
			String sql = "select u_id as id,u_name as name,u_card as idcard, u_phone as phone from user where u_id = "+ id +"";
			model = (All_userModel) dbm.getObject(All_userModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}
}