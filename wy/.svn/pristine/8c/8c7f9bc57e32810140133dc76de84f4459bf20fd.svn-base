package com.dhcc.bussiness.permissions;

import java.util.List;

import com.dhcc.bussiness.page.PageBean;

public class PermissionsService {
	public PageBean<Wy_permissions_userModel> findPermissionsByPage(int currentPage, int currentCount) {
		PermissionsDao dao = new PermissionsDao();
		PageBean<Wy_permissions_userModel> pageBean = new PageBean<Wy_permissions_userModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = dao.queryCount();
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<Wy_permissions_userModel> pageList = dao.findPermissionsByPage(startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	/*public PageBean<OrderModel> queryByTime(String start,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.queryByTimeCount(start);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.queryByTime(start,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> queryByHouseOrNameOrPhone(String house,String name,String phone,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.queryByHouseOrNameOrPhoneCount(house,name,phone);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.queryByHouseOrNameOrPhone(house,name,phone,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	
	public PageBean<OrderModel> selectOrderByPcAndState(String pc,Integer state,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.selectOrderByPcAndStateCount(pc,state);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByPcAndState(pc,state,startIndex,currentCount);  //state 是支付
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> selectOrderByPcAndCheck(String pc,Integer state,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.selectOrderByPcAndCheckCount(pc,state);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByPcAndCheck(pc,state,startIndex,currentCount);  //check 是入住
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> selectOrderByPc(String pc,int currentPage, int currentCount) {
		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.selectOrderByPcCount(pc);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByPc(pc,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> selectOrderByCheck(Integer state,int currentPage, int currentCount) {
		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			 System.out.println("查询是否已入住");
			Integer totalCount = orderDao.selectOrderByCheckCount(state);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByCheck(state,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> selectOrderByState(Integer state,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.selectOrderByStateCount(state);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByState(state,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}*/
}
