package com.dhcc.bussiness.permissions;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.bussiness.login.InitUserModel;
import com.dhcc.common.database.DBManager;
import com.dhcc.common.util.CommUtil;

public class PermissionsDao {
	private static final Logger logger = Logger.getLogger(PermissionsDao.class);
	public Integer queryCount() {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from wy_permissions_user where 1=1";
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
	public List<Wy_permissions_userModel> findPermissionsByPage(Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<Wy_permissions_userModel> list = null;
		try {
			dbm = new DBManager();
			String sql = "select wp.id as id,wp.userid as userid,wu.head_img as head_img,wu.nickname as nickname,wp.status as status,wp.authorized_t as authorized_t,wp.bd_userid as bd_userid from wy_permissions_user wp "
					+ " left join user_all wu on wu.uid = wp.bd_userid limit " + pageNumber + ","+ pageSize +"";
			list = dbm.getObjectList(Wy_permissions_userModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return list;
	}

	public int delPermissionsId(String _id) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "delete from wy_permissions_user where id = '"+ _id +"'";
			i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	public SQQuery queryRenyuan(String phone) {
		SQQuery model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select ua.uid as id,ua.nickname as nickname,ua.head_img as head_img from user u left join user_all ua on ua.uid = u.id "
					+ "where u.phone='"+ phone +"'";
			model = (SQQuery) dbm.getObject(SQQuery.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int addRenyuan(Wy_permissions_userModel wy_permissions_userModel,String houduan_userid) {
		int i =0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "insert into wy_permissions_user(id,userid,status,authorized_t,createtime,bd_userid) values('"+ CommUtil.getID() +"','"+ wy_permissions_userModel.getId() +"',"
					+ ""+ wy_permissions_userModel.getStatus() +",'"+ wy_permissions_userModel.getAuthorized_t() +"',"+ System.currentTimeMillis() +",'"+ houduan_userid +"')";
		  	i = dbm.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	@SuppressWarnings("unchecked")
	public int shouquanData(String bd_userid,String userid) {
		int i =0;
		DBManager dbm = null;
		InitUserModel MM = null;
		String delsql = "";
		List<InitUserModel> list = new ArrayList<InitUserModel>(); 
		try{
			dbm = new DBManager();
			//先删除后添加
			String querySQL = "select userid as id,bd_userid as eail from wy_authorization where userid = '"+ userid +"' and bd_userid = '"+ bd_userid +"'";
			list = dbm.getObjectList(InitUserModel.class, querySQL);
			if(list.size() > 0){
				logger.info("====用户授权表有数据====");
				delsql = "delete from wy_authorization where userid = '"+ userid +"' and bd_userid = '"+ bd_userid +"'";
			  	i = dbm.executeUpdate(delsql);
			}else{
				logger.info("====用户授权表无数据====");
				i =1;//直接进去了
			}
		  	if(i>0){
		  		//系统公告
		  		String sql1 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+ userid + "','系统公告','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		//房客互动
		  		String sql2 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+  userid + "','房客互动','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		//订单列表
		  		String sql3 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+  userid + "','订单列表','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		//房源管理
		  		String sql4 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+  userid + "','房源管理','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		//房间查询
		  		String sql5 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+  userid + "','房间查询','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		//统计分析
		  		String sql6 = "insert into wy_authorization(id,userid,menu_type,cxquanxian,czquanxian,c_time,bd_userid) values('"+ CommUtil.getID() +"','"+  userid + "','统计分析','2','2',"+ System.currentTimeMillis() +",'"+ bd_userid +"')";
		  		int i1 = dbm.executeUpdate(sql1);
		  		int i2 = dbm.executeUpdate(sql2);
		  		int i3 = dbm.executeUpdate(sql3);
		  		int i4 = dbm.executeUpdate(sql4);
		  		int i5 = dbm.executeUpdate(sql5);
		  		i = dbm.executeUpdate(sql6);
		  		if(i1 >0){
		  			logger.info("第一条系统公告插入成功");
		  			if(i2 >0){
		  				logger.info("第二条房客互动插入成功");
		  				if(i3 >0){
		  					logger.info("第三条订单列表插入成功");
		  					if(i4 >0){
		  						logger.info("第四条房源管理插入成功");
		  						if(i5 >0){
		  							logger.info("第五条房间查询插入成功");
		  							if(i >0){
		  								logger.info("第六条统计分析数据插入成功");
		  							}
		  						}
		  					}
		  				}
		  			}
		  		}
		  	}else{
		  		logger.info("删除数据异常");
		  	}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}

	@SuppressWarnings("unchecked")
	public List<SQList> shouquanDataId_new(String userid,String bd_userid) {
		List<SQList> list = new ArrayList<SQList>();
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select wya.id,wya.userid as userid,wya.menu_type,wya.cxquanxian as cxquanxian,wya.czquanxian as czquanxian,wya.bd_userid as bd_userid "
					+ " from wy_authorization wya where wya.userid = '"+ userid +"' and wya.bd_userid = '"+ bd_userid +"'";
			list = dbm.getObjectList(SQList.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return list;
	}

	public SearchModel userSearchResult(String shouquanzhanghao) {
		SearchModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql = "select u.id as id,ua.head_img as head_img,ua.nickname as nickname from user u left join user_all ua on ua.uid = u.id where u.phone = '"+ shouquanzhanghao +"'";
			model = (SearchModel) dbm.getObject(SearchModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public InitUserModel queryUsercunzai(String houduan_userid, String id) {
		InitUserModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql ="select userid as id,bd_userid as eail from wy_permissions_user where userid = '"+ id +"' and bd_userid = '"+ houduan_userid +"'";
			model = (InitUserModel) dbm.getObject(InitUserModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public SearchModel shouquanDataId(String _id, String result, String phone) {
		SearchModel model = null;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql ="select wu.id as id,wu.bd_userid as head_img,wu.userid as nickname from wy_permissions_user wu where wu.id = '"+ phone +"' and wu.bd_userid = '"+ result +"' and wu.userid = '"+ _id +"'";
			model = (SearchModel) dbm.getObject(SearchModel.class, sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return model;
	}

	public int shouquanData_update(String xxggchaxunquanxian__,
			String xxggcaozuoquanxian__, String xxggid__,
			String fkhdchaxunquanxian__, String fkhdcaozuoquanxian__,
			String fkhdid__, String ddlbchaxunquanxian__,
			String ddlbcaozuoquanxian__, String ddlbid__,
			String fyglchaxunquanxian__, String fyglcaozuoquanxian__,
			String fyglid__, String fjcxchaxunquanxian__,
			String fjcxcaozuoquanxian__, String fjcxid__,
			String tjfxchaxunquanxian__, String tjfxcaozuoquanxian__,
			String tjfxid__) {
		int i = 0;
		DBManager dbm = null;
		try{
			dbm = new DBManager();
			String sql1 = "update wy_authorization set cxquanxian = '"+ xxggchaxunquanxian__ +"',czquanxian = '"+ xxggcaozuoquanxian__ +"' where id = '"+ xxggid__ +"'";
			String sql2 = "update wy_authorization set cxquanxian = '"+ fkhdchaxunquanxian__ +"',czquanxian = '"+ fkhdcaozuoquanxian__ +"' where id = '"+ fkhdid__ +"'";
			String sql3 = "update wy_authorization set cxquanxian = '"+ ddlbchaxunquanxian__ +"',czquanxian = '"+ ddlbcaozuoquanxian__ +"' where id = '"+ ddlbid__ +"'";
			String sql4 = "update wy_authorization set cxquanxian = '"+ fyglchaxunquanxian__ +"',czquanxian = '"+ fyglcaozuoquanxian__ +"' where id = '"+ fyglid__ +"'";
			String sql5 = "update wy_authorization set cxquanxian = '"+ fjcxchaxunquanxian__ +"',czquanxian = '"+ fjcxcaozuoquanxian__ +"' where id = '"+ fjcxid__ +"'";
			String sql6 = "update wy_authorization set cxquanxian = '"+ tjfxchaxunquanxian__ +"',czquanxian = '"+ tjfxcaozuoquanxian__ +"' where id = '"+ tjfxid__ +"'";
			int i1 = dbm.executeUpdate(sql1);
			int i2 = dbm.executeUpdate(sql2);
			int i3 = dbm.executeUpdate(sql3);
			int i4 = dbm.executeUpdate(sql4);
			int i5 = dbm.executeUpdate(sql5);
			i = dbm.executeUpdate(sql6);
			if(i1>0){
				logger.info("系统公告更新成功");
				if(i2 >0){
					logger.info("房客互动更新成功");
					if(i3>0){
						logger.info("订单列表更新成功");
						if(i4>0){
							logger.info("房源管理更新成功");
							if(i5>0){
								logger.info("房间查询更新成功");
								if(i>0){
									logger.info("统计分析更新成功，最后返回结果");
								}
							}
						}
					}
				}
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbm.close();
		}
		return i;
	}
}