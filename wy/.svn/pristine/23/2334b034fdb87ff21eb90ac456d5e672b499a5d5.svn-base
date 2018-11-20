package com.dhcc.bussiness.count;

import java.util.ArrayList;
import java.util.List;
import com.dhcc.bussiness.page.PageBean;

public class CountService {
	public PageBean<CountModel> findCountByPage(String operate_id,int currentPage, int currentCount) {
		CountDao countDao = new CountDao();
		PageBean<CountModel> pageBean = new PageBean<CountModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = countDao.queryCount(operate_id);
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<CountModel> pageList = countDao.querycoutDetails(operate_id,startIndex,currentCount);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}

}
