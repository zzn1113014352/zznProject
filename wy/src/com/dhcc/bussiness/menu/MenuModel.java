package com.dhcc.bussiness.menu;

import java.util.List;

public class MenuModel {
	private Integer id;//
    private String name;//菜单名称
    private String url;//访问地址
    private Integer mid;//上级菜单
    private List<MenuModel> childMenu;//子菜单
    private String img;//图标
    
    
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public List<MenuModel> getChildMenu() {
		return childMenu;
	}
	public void setChildMenu(List<MenuModel> childMenu) {
		this.childMenu = childMenu;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}


}
