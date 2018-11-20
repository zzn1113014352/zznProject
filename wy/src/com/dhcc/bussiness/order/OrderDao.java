package com.dhcc.bussiness.order;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.bussiness.User.UserDao;
import com.dhcc.bussiness.house.HouseModel;
import com.dhcc.common.database.DBManager;

public class OrderDao {
	private static final Logger logger = Logger.getLogger(OrderDao.class);
	private UserDao userDao = new UserDao();	
	

	
	/*
	 * 查询经营者名下的房源
	 */
	public List<HouseModel> QueryHouse(String operate_id) {
		DBManager dbm = null;
		List<HouseModel> count = null;
		try {
			dbm = new DBManager();
			String sql = "select * from house where operate_id = '" + operate_id + "' and use_state = '已上线'";
			count = dbm.getObjectList(HouseModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	/*
	 * 查询授权码
	 */
	public OrderModel findCode(String oauth_code) {
		DBManager dbm = null;
		OrderModel count = null;
		try {
			dbm = new DBManager();
			String sql = "select oauth_code from orders where oauth_code = '" + oauth_code + "'";
			count = (OrderModel) dbm.getObject(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	public int addOrder(String order_id, String oauth_code, String net_house_id, String orders_date, String reside_date,
			String reside_retreat_date,String update_date,
			String people, String money,String reserve_phone,String operate_id,String start,String stop,String reserve_name,
			String reserve_id_type,String reserve_id_num
			) {
		DBManager dbm = null;
		int i = 0;
		try {
			dbm = new DBManager();
			String sql = "insert into orders(people,money,order_id,oauth_code,net_house_id,orders_date,reside_date,"
					+ "reside_retreat_date,update_date,reserve_phone,operate_id,start,stop,reserve_name,reserve_id_type,reserve_id_num,states) values"
					+ "('"
					+ people + "','" +
					money + "','" +
					order_id + "','" +
					oauth_code + "','" +
					net_house_id + "','" +
					orders_date + "','" +
					reside_date + "','" +
					reside_retreat_date + "','" +
					update_date + "','" +
					reserve_phone + "','" +
					operate_id + "','" +
					start + "','" +
					stop + "','" + 
					reserve_name + "','" +
					reserve_id_type + "','" +
					reserve_id_num
					+ "','待入住')";
			i = dbm.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return i;
		
	}
	
	/*
	 * 查询总条数
	 */
	public Integer queryCount(String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '" + operate_id + "'";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	

	/*
	 * 根据平台查询订单
	 */
	public List<OrderModel> selectOrderByPc(String pc,String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT o.id,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num,o.states,h.house,h.source from orders o,house h where o.operate_id = '" + operate_id + "' and o.net_house_id = h.net_house_id and h.source = '" + pc +"' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 根据平台查询订单 总条数
	 */
	public Integer selectOrderByPcCount(String pc,String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT count(*) from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '" + operate_id + "' and h.source = '" + pc +"';";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	/*
	 * 根据平台和状态查询订单         平台和支付状态
	 */
	public List<OrderModel> selectOrderByPcAndState(String pc,Integer state,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT c.id,c.house,c.source,FROM_UNIXTIME( c.start/1000,'%Y-%m-%d') as start,FROM_UNIXTIME( c.stop/1000,'%Y-%m-%d') as stop,d.name,d.phone,c.people,c.money,c.paytype,c.checkstate from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.source = '"+ pc +"' and c.paystatus = '" + state + "' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 根据平台和状态查询订单总条数         平台和支付状态
	 */
	public Integer selectOrderByPcAndStateCount(String pc,Integer state) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT count(*) from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.source = '"+ pc +"' and c.paystatus = '" + state + "';";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	/*
	 * 根据平台和状态查询订单         平台和入住状态
	 */
	public List<OrderModel> selectOrderByPcAndCheck(String pc,Integer state,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT c.id,c.house,c.source,FROM_UNIXTIME( c.start/1000,'%Y-%m-%d') as start,FROM_UNIXTIME( c.stop/1000,'%Y-%m-%d') as stop,d.name,d.phone,c.people,c.money,c.paytype,c.checkstate from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.source = '"+ pc +"' and c.checkstate = '" + state + "' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 根据平台和状态查询订单     总条数    平台和入住状态
	 */
	public Integer selectOrderByPcAndCheckCount(String pc,Integer state) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT count(*) from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.source = '"+ pc +"' and c.checkstate = '" + state + "';";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	/*
	 * 根据状态查询订单     支付状态
	 */
	public List<OrderModel> selectOrderByState(Integer state,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT c.id,c.house,c.source,FROM_UNIXTIME( c.start/1000,'%Y-%m-%d') as start,FROM_UNIXTIME( c.stop/1000,'%Y-%m-%d') as stop,d.name,d.phone,c.people,c.money,c.paytype,c.paystatus,c.checkstate from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.paystatus = '" + state + "' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 根据状态查询订单     支付状态  总条数
	 */
	public Integer selectOrderByStateCount(String state) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT count(*) from (select a.uid,a.name,b.phone from user_all a left join user b on a.uid = b.id) d left join orders c on c.uid = d.uid where c.paystatus = '" + state + "';";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	/*
	 * 根据状态查询订单     入住状态
	 */
	public List<OrderModel> selectOrderByCheck(String state,String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT o.id,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num,o.states,h.house,h.source from orders o,house h where o.states = '" + state + "' and o.operate_id = '" + operate_id + "' and o.net_house_id = h.net_house_id limit " + pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 根据状态查询订单     入住状态   总条数
	 */
	public Integer selectOrderByCheckCount(String state,String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT count(*) from  orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '" + operate_id + "' and o.states = '" + state + "';";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	
	//根据id查询实体
	public OrderModel queryById(Integer id){
		DBManager dbm = null;
		OrderModel model = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT o.states,h.house,h.source,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num from orders o,house h where o.net_house_id = h.net_house_id and o.id = '" + id + "'";
			model = (OrderModel) dbm.getObject(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return model;
	}
	
	/*
	 * 搜索
	 */
	public List<OrderModel> queryByName(String name,String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "select o.id,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num,o.states,h.house,h.source from orders o,house h"
					+ " where o.net_house_id = h.net_house_id and o.operate_id = '"+ operate_id +"' and o.reserve_name = '" + name +  "' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	/*
	 * 搜索   根据时间搜索
	 */
	public List<OrderModel> queryByTime(String time,String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "select o.id,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,"
					+ "o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num,o.states,"
					+ "h.house,h.source from orders o,house h "
					+ "where o.operate_id = '" + operate_id + "' and o.net_house_id = h.net_house_id and o.start like '" + time  + "%' limit " +  pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}
	
	/*
	 * 搜索总条数
	 */
	public Integer queryByNameCount(String name,String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '"+ operate_id +"' and o.reserve_name = '" + name + "'";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	/*
	 * 搜索总条数   根据时间查询
	 */
	public Integer queryByTimeCount(String time,String operate_id) {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from orders o,house h where o.net_house_id = h.net_house_id and o.operate_id = '"+ operate_id +"' and o.start like '" + time + "%'";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}


	/*
	 * 查询所有的订单
	 */
	public List<OrderModel> findOrderByPage(String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<OrderModel> OrderModelAll = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT o.id,o.people,o.money,o.housenum,o.oauth_code,o.orders_date,o.reserve_phone,o.start,o.stop,o.reserve_name,o.reserve_id_type,o.reserve_id_num,o.states,h.house,h.source from orders o,house h where o.operate_id = '" + operate_id + "' and o.net_house_id = h.net_house_id limit " + pageNumber + ","+ pageSize +";";
			OrderModelAll = dbm.getObjectList(OrderModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return OrderModelAll;
	}

	public int save(OrderModel orderModel) {
		DBManager dbm = null;
		int i = 0;
		String id = userDao.selectUserId(orderModel.getName(), orderModel.getPhone());
		try {
			dbm = new DBManager();
			String sql = "insert into orders(house,source,start,stop,uid,people,money,paytype,checkstate) values"
					+ "('"+ orderModel.getHouse() +"','"
					+ orderModel.getSource() +"','"
					+ orderModel.getStart() + "','" +
					orderModel.getStop() + "','" +
					id + "','" +
					orderModel.getPeople() + "','" +
					orderModel.getMoney() + "','" +
					orderModel.getPaytype() + "','" +
					orderModel.getCheckstate()
					+ "')";
			i = dbm.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return i;
		
	}
	
}
