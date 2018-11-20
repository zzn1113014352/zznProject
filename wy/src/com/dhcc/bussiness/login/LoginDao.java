package com.dhcc.bussiness.login;

import com.dhcc.bussiness.User.UserModel;
import com.dhcc.common.database.DBManager;
import com.dhcc.common.util.CommUtil;

public class LoginDao {

	public BossModel loginUser(String operate_phone, String password) {
		BossModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select * from wy_boss where operate_phone = '"+ operate_phone +"' and password = '"+ password +"'";
		 	model = (BossModel) dbm.getObject(BossModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public BossModel queryUser(String operate_phone) {
		BossModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select * from wy_boss where operate_phone = '"+ operate_phone +"'";
		 	model = (BossModel) dbm.getObject(BossModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int updateUser(String operate_phone, String password) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "update wy_boss set password = '"+ password +"' where 1=1 and operate_phone = '"+ operate_phone +"'";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public int regUser(String operate_id, Integer operate_type,String operate_name,String operate_id_type,String operate_id_num,
			String operate_phone,String operate_addr,String password
			) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "insert into wy_boss (operate_id,operate_type,operate_name,operate_id_type,operate_id_num,operate_phone,operate_addr,password) "
					+ "value('"+ operate_id +"','"+ operate_type +"','"+ operate_name +"','"+ operate_id_type +"','"+operate_id_num+
					"','"+operate_phone+"','"+operate_addr+"','"+password+
					"')";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public InitUserModel queryUserALL(String userid) {
		InitUserModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select ua.uid as id,ua.head_img as user_img,ua.nickname as nickname,ua.card as idcard,ua.name as name,ua.sex as sex,ua.region as diqu,ua.mailbox as eail "
					+ "from user_all ua where 1=1 and ua.uid = '"+ userid +"'";
			model = (InitUserModel) dbm.getObject(InitUserModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int regUserALL(String operate_id) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "insert into user_all(uid,name,card,nickname,sex,mailbox,region,head_img) value('"+ operate_id +"','','','','','','','')";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public BossModel queryUserId(String userid) {
		//UserModel model = null;
		BossModel model=null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select u.* from wy_boss u where u.operate_id = '"+ userid +"'";
		 	model = (BossModel) dbm.getObject(BossModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int upadteUserAllRE(String userid, String nickname_s,
			String idcard_s, String name_s, String sex,
			String district, String email_s,String phone_s) {
		int j = 0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "update user_all set uid='"+ userid +"',name = '"+ name_s +"',card = '"+ idcard_s +"',"
					+ "nickname = '"+ nickname_s +"',sex = '"+ sex +"',mailbox = '"+ email_s +"',"
							+ "region = '"+ district +"' where uid = '"+ userid +"'";
			int i = dbm.executeUpdate(sql);
			if(i>0){
				String sql2 = "update wy_boss set operate_phone = '"+ phone_s +"' where id = '"+ userid +"'";
				j=dbm.executeUpdate(sql2);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return j;
	}

	public int updateUserInfo(String userid, String news_password) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql ="update wy_boss set password = '"+ news_password  +"' where 1=1 and id = '"+ userid +"'";
		 	i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}
}