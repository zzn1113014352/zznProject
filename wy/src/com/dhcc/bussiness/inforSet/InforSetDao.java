package com.dhcc.bussiness.inforSet;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class InforSetDao {
	private static final Logger logger = Logger.getLogger(InforSetDao.class);

	 //改变状态
	   public boolean updateInforSet(Integer take_mess,Integer user_mess,Integer visit_mess,Integer changes_house, String userid){
			DBManager dbm = new DBManager();
			int flag = 0;
			try {
				String updatesql = "update wy_message_set set take_mess='"+ take_mess +"',user_mess='"+ user_mess +"',visit_mess='"+ visit_mess +"',changes_house='"+ changes_house +"'  where userid = '"+ userid +"'";
				flag = dbm.executeUpdate(updatesql);
			} catch (Exception e) {
				logger.info(e);
				return false;
			}finally{
				dbm.close();
			}
			if(flag > 0){
				return true;
			}
			return false;
		}
	   //查询状态
	   public InforSetModel inforQueryById(String userid){
			DBManager dbm = new DBManager();
			InforSetModel model = null;
			try {
				String querysql = "select * " +
						"from wy_message_set  " +
						"where  userid = '"+userid+"'";
				model = (InforSetModel) dbm.getObject(InforSetModel.class, querysql);
			} catch (Exception e) {
				logger.info(e);
				return model;
			}finally{
				dbm.close();
			}
			return model;
		}
	   //注册用户的时候也生成一个消息设置的表
		public int regInfor(String userid) {
			int i =0;
			DBManager dbm = null;
			try{
				dbm = new DBManager();
				String sql = "insert into wy_message_set (userid,take_mess,user_mess,visit_mess,changes_house) "
						+ "value('"+ userid +"' ,0,0,0,0)";
				i = dbm.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				dbm.close();
			}
			return i;
		}
	
}

