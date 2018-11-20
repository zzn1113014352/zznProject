package com.dhcc.bussiness.User;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class UserDao {
	private static final Logger logger = Logger.getLogger(UserDao.class);
	
	/*
	 * 根据uid查询所有用户
	 */
	public UserModel selectUser(String uid) {
		DBManager dbm = null;
		UserModel userModel = null;
		try {
			dbm = new DBManager();
			String sql = "select * from user where id = '" + uid + "'";
			userModel = (UserModel) dbm.getObject(UserModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return userModel;
	}
	
	/*
	 * 根据uid查询所有用户的具体信息
	 */
	public UserAllModel selectUserAll(String uid) {
		DBManager dbm = null;
		UserAllModel userAllModel = null;
		try {
			dbm = new DBManager();
			String sql = "select * from user_all where id = '" + uid + "'";
			userAllModel = (UserAllModel) dbm.getObject(UserAllModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return userAllModel;
	}
	
	/*select u.id from user u,user_all ua where ua.name='吕俊雄' and u.phone = 123*/
	/*
	 * 根据姓名和手机号查询用户Id
	 */
	public String selectUserId(String name,String phone) {
		DBManager dbm = null;
		String id = null;
		UserModel model = null;
		try {
			dbm = new DBManager();
			String sql = "select u.id from user u,user_all ua where ua.name='"+ name +"' and u.phone = '" + phone + "'";
			model = (UserModel) dbm.getObject(UserModel.class, sql);
			if(model != null){
				id = model.getId();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return id;
	}
}
