package com.dhcc.bussiness.alluser;

import java.util.List;

import com.dhcc.bussiness.page.PageBean;

public class AlluserService {
	public PageBean<All_userModel> findAlluserByPage(int currentPage, int currentCount,String s_data) {
		AlluserDao dao = new AlluserDao();
		PageBean<All_userModel> pageBean = new PageBean<All_userModel>();
		try {
			pageBean.setCurrentPage(currentPage);
			pageBean.setCurrentCount(currentCount);
			Integer totalCount = dao.queryCount();
			pageBean.setTotalCount(totalCount);
			int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
			pageBean.setTotalPage(totalPage);
			int startIndex = (currentPage-1)*currentCount;
			List<All_userModel> pageList = dao.findAlluserByPage(startIndex,currentCount,s_data);
			pageBean.setPageList(pageList);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pageBean;
	}
}
