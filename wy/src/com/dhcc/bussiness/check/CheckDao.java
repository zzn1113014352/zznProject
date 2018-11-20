package com.dhcc.bussiness.check;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class CheckDao {
	private static final Logger logger = Logger.getLogger(CheckDao.class);
	
	public int addCheck2(String username,String userphone,String contents,String start,String states,String hid) {
		DBManager dbm = null;
		int i = 0;
		try {
			dbm = new DBManager();
			String sql = "insert into wyg_check(username,userphone,contents,start,states,hid,zt)"
					+ " values('"+ username +"','"+ userphone  +"','"+contents
					+"','"+start+"','"+states+"','"+hid+ "',0)";
			i = dbm.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return i;
	}
	
		public int addCheck(String username,String userphone,String contents,String start,String states,String hid) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "insert into wyg_check(username,userphone,contents,start,states,hid,zt)"
						+ " values('"+ username +"','"+ userphone  +"','"+contents
						+"','"+start+"','"+states+"','"+hid+ "',0)";
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return i;
		}
		
		//根据id查询实体
		public CheckModel findCheckById(String id){
			DBManager dbm = null;
			CheckModel model = null;
			try {
				dbm = new DBManager();
				String sql = "SELECT id,username,userphone,contents,FROM_UNIXTIME(start/1000,'%Y-%m-%d') as start,states,hid from wyg_check where hid = '" + id +"'";
				
				model = (CheckModel) dbm.getObject(CheckModel.class, sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return model;
		}
		//根据id查询实体
		public CheckModel findCheckById(Integer id){
			DBManager dbm = null;
			CheckModel model = null;
			try {
				dbm = new DBManager();
				String sql = "SELECT id,username,userphone,contents,FROM_UNIXTIME(start/1000,'%Y-%m-%d') as start,states,hid from wyg_check where id = '" + id +"'";
				model = (CheckModel) dbm.getObject(CheckModel.class, sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return model;
		}
		
		//修改房源状态为已上线
		public int updateGoCheck(String id) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "update wyg_check set states = '正常-已上线',zt = 1 where hid = '" + id + "'";
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return i;
		}
		//修改房源状态为未上线
		public int updateGoCheck2(String id) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "update wyg_check set states = '正常-未上线',zt = 1 where hid = '" + id + "'";
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return i;
		}
}
