package com.dhcc.bussiness.order;

import java.util.ArrayList;
import java.util.List;

import com.dhcc.bussiness.page.PageBean;

public class OrderService {
	public PageBean<OrderModel> findOrderByPage(String operate_id,int currentPage, int currentCount) {
		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.queryCount(operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.findOrderByPage(operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	public PageBean<OrderModel> queryByTime(String start,String operate_id,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.queryByTimeCount(start,operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.queryByTime(start,operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> queryByName(String name,String operate_id,int currentPage, int currentCount) {

		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.queryByNameCount(name,operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.queryByName(name,operate_id,startIndex,currentCount);
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
	
	public PageBean<OrderModel> selectOrderByPc(String pc,String operate_id,int currentPage, int currentCount) {
		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = orderDao.selectOrderByPcCount(pc,operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByPc(pc,operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public PageBean<OrderModel> selectOrderByCheck(String state,String operate_id,int currentPage, int currentCount) {
		OrderDao orderDao = new OrderDao();
		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			 System.out.println("查询是否已入住");
			Integer totalCount = orderDao.selectOrderByCheckCount(state,operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<OrderModel> pageList = orderDao.selectOrderByCheck(state,operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
//	public PageBean<OrderModel> selectOrderByState(Integer state,int currentPage, int currentCount) {
//
//		OrderDao orderDao = new OrderDao();
//		PageBean<OrderModel> pageBean = new PageBean<OrderModel>();
//		try {
//			pageBean.setCurrentPage(currentPage);
//			pageBean.setCurrentCount(currentCount);
//			Integer totalCount = orderDao.selectOrderByStateCount(state);
//			pageBean.setTotalCount(totalCount);
//			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
//			pageBean.setTotalPage(totalPage);
//			int startIndex = (currentPage-1)*currentCount;
//			List<OrderModel> pageList = orderDao.selectOrderByState(state,startIndex,currentCount);
//			pageBean.setPageList(pageList);
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return pageBean;
//	}
	public void save(List<OrderModel> list) {
		OrderDao orderDao = new OrderDao();
		for (OrderModel orderModel : list) {
			orderDao.save(orderModel);
		}
		
	}
}
