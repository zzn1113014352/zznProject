package com.dhcc.bussiness.page;

import java.util.*;

public class PageBean<T> {
	
	private Integer totalCount;//总条数
	private Integer totalPage;//总页数
	private Integer currentPage;//当前页
	private Integer currentCount;//当前页显示的条数
	private List<T> pageList;//当前页显示数据列表
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(Integer currentCount) {
		this.currentCount = currentCount;
	}
	public List<T> getPageList() {
		return pageList;
	}
	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}
	
	
	
	
}
