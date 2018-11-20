package com.dhcc.bussiness.menu;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.bussiness.User.UserModel;
import com.dhcc.common.database.DBManager;

public class MenuDao {
	private static final Logger logger = Logger.getLogger(MenuDao.class);
	
	/*
	 * 查询所有目录
	 */
	public List<MenuModel> getMenu() {
		DBManager dbm = null;
		List<MenuModel> menuModel = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT * from menu";
			menuModel = dbm.getObjectList(MenuModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return menuModel;
	}
	
	/*
	 * 查询子目录
	 */
	public List<MenuModel> getZiMenu(Integer id) {
		DBManager dbm = null;
		List<MenuModel> menuModel = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT * from menu where mid = '" + id +"'";
			menuModel =  dbm.getObjectList(MenuModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return menuModel;
	}
}
