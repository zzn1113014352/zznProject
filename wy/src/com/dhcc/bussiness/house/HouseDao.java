package com.dhcc.bussiness.house;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;

public class HouseDao {
	private static final Logger logger = Logger.getLogger(HouseDao.class);
	
	//修改房源状态为已上线
	public int updateGoCheck2(String id) {
		DBManager dbm = null;
		int i = 0;
		try {
			dbm = new DBManager();
			String sql = "update house set use_state = '未上线' where net_house_id = '" + id + "'";
			i = dbm.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return i;
	}
	
	//修改房源状态为已上线
		public int updateGoCheck(String id) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "update house set use_state = '已上线' where net_house_id = '" + id + "'";
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
	public Integer queryCount() {
		DBManager dbm = null;
		Integer count = null;
		try {
			dbm = new DBManager();
			String sql = "select count(*) from house";
			count = dbm.executeQueryCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return count;
	}
	
	/*
	 * 查询所有的房源信息
	 */
	public List<HouseModel> findHouseByPage(String operate_id,Integer pageNumber,Integer pageSize) {
		DBManager dbm = null;
		List<HouseModel> houseModel = null;
		try {
			dbm = new DBManager();
			String sql = "SELECT * from house where operate_id = '"+ operate_id +"' limit " + pageNumber + ","+ pageSize +";";
			houseModel = dbm.getObjectList(HouseModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return houseModel;
	}
	

	//根据id查询实体
	public HouseModel queryById(String id){
		DBManager dbm = null;
		HouseModel model = null;
		try {
			dbm = new DBManager();
			String sql = "select * from house where id = '"
					+ id + "'";
			model = (HouseModel) dbm.getObject(HouseModel.class, sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbm.close();
		}
		return model;
	}
	
	//根据id查询实体
		public HouseModel queryById(Integer id){
			DBManager dbm = null;
			HouseModel model = null;
			try {
				dbm = new DBManager();
				String sql = "select * from house where id = '"
						+ id + "'";
				model = (HouseModel) dbm.getObject(HouseModel.class, sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return model;
		}
	
	 /**
     * @param ids id的数据数组
     */
	public String houseDel(String id){
		String sql = "";
		DBManager dbm = new DBManager();
		try {
				sql = "delete from house where id='" + id + "'";
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
	
	//添加房源
		public int addHouse(String imgs,String agreement,String lock_name,String groups,String house,String source
				,String housenum,Integer shi, Integer ting,Integer wei,String net_house_provinces,String net_house_street,String net_house_addr,
				String net_house_addr_name,String net_house_addr_id,String house_property_name,String house_property_phone,
				String house_property_id_type,String house_property_id_num,Integer house_property_type,Integer house_rentout_type,
				Integer house_source,String net_house_data_psb_name, String net_house_data_psb_id,String net_house_data_local_police_id, String net_house_data_local_police_name,
				String house_type,String house_num, String house_acreage,
				String toward,String decoration,Integer ceng, Integer cengs, String danyuan,
				String rent,String title,String describes,String net_house_id,String operate_id,String net_house_name,String use_state,String start_date,String stop_date,String register_date,String update_date,
				String net_house_provinces1,String net_house_provinces2,String net_house_provinces3
				 ) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "insert into house(img,agreement,lock_name,groups,house,source,housenum,shi,ting,wei,"
						+ "net_house_provinces,net_house_street,net_house_addr,net_house_addr_name,net_house_addr_id,house_property_name,"
						+ "house_property_phone,house_property_id_type,house_property_id_num,house_property_type,"
						+ "house_rentout_type,house_source,net_house_data_psb_name,net_house_data_psb_id,net_house_data_local_police_id,"
						+ "net_house_data_local_police_name,house_type,house_num,house_acreage,toward,decoration,"
						+ "ceng,cengs,danyuan,rent,title,describes,net_house_id,operate_id,net_house_name,use_state,"
						+ "start_date,stop_date,register_date,update_date,net_house_provinces1,net_house_provinces2,net_house_provinces3,housestate,house_check) "
						+ "values('" + imgs + "','"  + agreement + "','" + lock_name + "','" + groups + "','"+ house
						+"','" + source + "','"+ housenum + "','"+ shi + "','"+ ting + 
						"','"+ wei + "','"+ net_house_provinces + "','"+ net_house_street  + "','"+net_house_addr + "','"+ net_house_addr_name + "','"+
						net_house_addr_id + "','"+ house_property_name + "','"+ house_property_phone 
						+ "','"+ house_property_id_type + "','"+ house_property_id_num + "','"+ house_property_type
						+ "','"+ house_rentout_type+ "','"+ house_source+ "','"+ net_house_data_psb_name+ "','"+ net_house_data_psb_id+ "','"+net_house_data_local_police_id
						+ "','"+ net_house_data_local_police_name+ "','"+ house_type+ "','"+ house_num+ "','"+ house_acreage
						+ "','"+ toward+ "','"+ decoration+ "','"+ ceng+ "','"+ cengs+ "','"+ danyuan+ "','"+ rent
						+ "','"+ title+ "','"+ describes+ "','"+net_house_id + "','"+ operate_id + "','"+
						net_house_name + "','未上线','"+start_date + "','"+ stop_date + "','"
						+register_date + "','"+ update_date + "','"+ net_house_provinces1 + "','"+ net_house_provinces2 + "','"+ net_house_provinces3
						+ "','0','0')";
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return i;
		}
	
		
		//修改房源
		public int editHouse(String id,String imgs,String agree,String lock_name,String groups,String house,String source,String housenum,Integer shi,Integer ting,Integer wei,
				String net_house_provinces,String net_house_street,String net_house_addr,String net_house_addr_name,String net_house_addr_id,
				String house_property_name,String house_property_phone,String house_property_id_type,String house_property_id_num,
				Integer house_property_type,Integer house_rentout_type,Integer house_source,String net_house_data_psb_name,String net_house_data_psb_id,
				String net_house_data_local_police_id,String net_house_data_local_police_name,String house_type,String house_num,String house_acreage,String toward,
				String decoration,Integer ceng,Integer cengs,String danyuan,String rent,String title,String describes,String net_house_name,String update_date) {
			DBManager dbm = null;
			int i = 0;
			try {
				dbm = new DBManager();
				String sql = "update house set img = '" + imgs + "',agreement = '" + agree + "',lock_name = '" + lock_name +"',groups = '" + groups +"',house = '" + house +"',"
						+ "source = '" + source +"',housenum = '" + housenum +"',shi = '" + shi +"',"+ "ting = '" + ting + 
						"',wei = '" + wei + "',net_house_provinces = '" + net_house_provinces +"',"+ "net_house_street = '" + net_house_street + "',net_house_addr = '" + net_house_addr +
						"',net_house_addr_name = '" + net_house_addr_name + "',net_house_addr_id = '" + net_house_addr_id+ "',house_property_name = '" + house_property_name
						+ "',house_property_phone = '" + house_property_phone + "',house_property_id_type = '" + house_property_id_type + "',house_property_id_num = '" + house_property_id_num+ 
						"',house_property_type = '" + house_property_type +"',house_rentout_type = '" + house_rentout_type +"',house_source = '" + house_source +
						"',net_house_data_psb_name = '" + net_house_data_psb_name +"',net_house_data_psb_id = '" + net_house_data_psb_id +"',net_house_data_local_police_id = '" + net_house_data_local_police_id +
						"',net_house_data_local_police_name = '" + net_house_data_local_police_name +"',house_type = '" + house_type +"',house_num = '" + house_num +
						"',house_acreage = '" + house_acreage +"',toward = '" + toward +"',decoration = '" + decoration +"',ceng = '" + ceng +
						"',cengs = '" + cengs +"',danyuan = '" + danyuan +"',rent = '" + rent +"',title = '" + title +"',describes = '" + describes +
						"',net_house_name = '" + net_house_name +"',update_date = '" + update_date+
						
						"' where id = '" + id + "'";
						
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbm.close();
			}
			return i;
		}
	

}
