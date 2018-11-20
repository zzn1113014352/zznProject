package com.dhcc.bussiness.home;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;
import com.dhcc.common.util.StringUtil;
import com.dhcc.utils.PageFactory;
import com.dhcc.utils.PageModel;

public class HomeDao {
	private static final Logger logger = Logger.getLogger(HomeDao.class);
	@SuppressWarnings("unchecked")
	public 	PageModel HomeQueryList(PageModel pm,String floor,String housetype,String toward,String housenum,String housestate,String operate_id){
		DBManager dbm=new DBManager();
		List<HomeModel> list = null;
		try {

			String querysql = "SELECT n.id,n.ceng as floor ,n.house_type as housetype, n.housenum,n.toward,n.housestate"+
			" FROM house n"+
			" WHERE operate_id =  '" + operate_id  +"'";
			if(!StringUtil.isNullOrEmpty(floor) && !"null".equals(floor)){//楼层
				querysql += " and n.ceng  like '%"+ floor +"%' ";
			}
			if(!StringUtil.isNullOrEmpty(housetype) && !"null".equals(housetype)){//房型
				querysql += " and n.house_type  like '%"+ housetype +"%' ";
			}
			if(!StringUtil.isNullOrEmpty(housenum) && !"null".equals(housenum)){//房号
				querysql += " and n.housenum  like '%"+ housenum +"%' ";
			}
			if(!StringUtil.isNullOrEmpty(toward) && !"null".equals(toward)){//朝向
				querysql += " and n.toward  like '%"+ toward +"%' ";
			}if(!StringUtil.isNullOrEmpty(housestate) && !"null".equals(housestate)){//房间状态
				querysql += " and n.housestate  like '%"+ housestate +"%' ";
			}
			querysql += " group by id order by ceng desc";
			String countsql = "select count(*) from (" + querysql + ")t";
			int count =dbm.executeQueryCount(countsql);
			int total = count % pm.getPerPage() == 0 ? count /pm.getPerPage() : count / pm.getPerPage() + 1;
			pm.setTotalPage(total);
			pm.setTotalRecord(count);
			PageFactory pageFactory = new PageFactory();
			String sql = pageFactory.createPageSQL(querysql, pm);
			pageFactory = null;
			list = dbm.getObjectList(HomeModel.class, sql);
			pm.setList(list);
		} catch (Exception e){			
			e.printStackTrace();
			logger.error("房间查询出错！"+e.getMessage());
		}finally{
			dbm.close();
		}
		return pm;
	}
	public 	PageModel HomeQueryWeixiu(PageModel pm,String operate_id){
		DBManager dbm=new DBManager();
		List<HomeModel> list = null;
		try {

			String querysql = "SELECT n.id,n.ceng as floor ,n.house_type as housetype,n.housenum,n.toward,n.housestate"+
			" FROM house n"+
			" WHERE operate_id =  '" + operate_id  +"' AND n.housestate LIKE '%4%' OR n.housestate LIKE '%5%' OR n.housestate LIKE '%6%'";
			querysql += " group by id order by ceng desc";
			String countsql = "select count(*) from (" + querysql + ")t";
			int count =dbm.executeQueryCount(countsql);
			int total = count % pm.getPerPage() == 0 ? count /pm.getPerPage() : count / pm.getPerPage() + 1;
			pm.setTotalPage(total);
			pm.setTotalRecord(count);
			PageFactory pageFactory = new PageFactory();
			String sql = pageFactory.createPageSQL(querysql, pm);
			pageFactory = null;
			list = dbm.getObjectList(HomeModel.class, sql);
			pm.setList(list);
		} catch (Exception e){			
			e.printStackTrace();
			logger.error("房间查询出错！"+e.getMessage());
		}finally{
			dbm.close();
		}
		return pm;
	}
	public 	PageModel HomeQueryDasao(PageModel pm,String operate_id){
		DBManager dbm=new DBManager();
		List<HomeModel> list = null;
		try {
			String querysql = "SELECT n.id,n.ceng as floor,n.house_type as housetype,n.housenum,n.toward,n.housestate"+
			" FROM house n"+
			" WHERE operate_id =  '" + operate_id  +"' AND  n.housestate LIKE '%7%' OR n.housestate LIKE '%8%' ";
			querysql += " group by id order by ceng desc";
			String countsql = "select count(*) from (" + querysql + ")t";
			int count =dbm.executeQueryCount(countsql);
			int total = count % pm.getPerPage() == 0 ? count /pm.getPerPage() : count / pm.getPerPage() + 1;
			pm.setTotalPage(total);
			pm.setTotalRecord(count);
			PageFactory pageFactory = new PageFactory();
			String sql = pageFactory.createPageSQL(querysql, pm);
			pageFactory = null;
			list = dbm.getObjectList(HomeModel.class, sql);
			pm.setList(list);
		} catch (Exception e){			
			e.printStackTrace();
			logger.error("房间查询出错！"+e.getMessage());
		}finally{
			dbm.close();
		}
		return pm;
	}
	

	//查看预定和已支付的
	public HomeModel HomeQueryById(Integer id,String operate_id){
		DBManager dbm = new DBManager();
		HomeModel model = null;
		try {
			String querysql = 
					"SELECT h.housestate, o.paytype,o.source,o.people,ua.name FROM orders o,house h,user_all ua"+
							" WHERE operate_id =  '" + operate_id  +"'  AND  o.hid = h.hid AND o.uid=ua.uid AND h.id ='"+id+"'";
			model = (HomeModel) dbm.getObject(HomeModel.class, querysql);
		} catch (Exception e) {
			logger.info(e);
			return model;
		}finally{
			dbm.close();
		}
		return model;
	}
	/**
	 * 更新房间状态
	 * @param id
	 * @return
	 */
	public boolean updateHomeState(Integer id,String housestate){
		DBManager dbm = new DBManager();
		int flag = 0;
		try {
			String updatesql = "update house set housestate='"+ housestate +"'  where id = '"+ id +"'";
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
}

