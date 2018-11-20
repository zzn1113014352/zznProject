package com.dhcc.bussiness.house;

import java.util.List;
import com.dhcc.bussiness.page.PageBean;

public class HouseService {
	public PageBean<HouseModel> findHouseByPage(String operate_id,int currentPage, int currentCount) {
		HouseDao houseDao = new HouseDao();
		PageBean<HouseModel> pageBean = new PageBean<HouseModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = houseDao.queryCount();
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<HouseModel> pageList = houseDao.findHouseByPage(operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
	
	
	
	
}
