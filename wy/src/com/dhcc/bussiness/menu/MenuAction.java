package com.dhcc.bussiness.menu;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class MenuAction extends ActionSupport implements ServletRequestAware{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(ActionSupport.class);
	private MenuDao menuDao = new MenuDao();
	private List<MenuModel> menuModelList;
	private Integer id;
	HttpServletRequest request;
	private String result;
	private MenuModel menu;
	private List<MenuModel> mezi;
	
	
	
	public List<MenuModel> getMezi() {
		return mezi;
	}

	public void setMezi(List<MenuModel> mezi) {
		this.mezi = mezi;
	}

	public MenuModel getMenu() {
		return menu;
	}

	public void setMenu(MenuModel menu) {
		this.menu = menu;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<MenuModel> getMenuModelList() {
		return menuModelList;
	}

	public void setMenuModelList(List<MenuModel> menuModelList) {
		this.menuModelList = menuModelList;
	}
	
	
	public String getFuMenu(){
		List<MenuModel> list = menuDao.getMenu();
		List<MenuModel> FuMenu = new ArrayList<MenuModel>();
		List<MenuModel> ZiMenu = new ArrayList<MenuModel>();
		
		for (MenuModel menuModel : list) {
			if(menuModel.getMid().equals(0)){
				FuMenu.add(menuModel);
			}
		}
		for (MenuModel menuModel : FuMenu) {
			ZiMenu = menuDao.getZiMenu(menuModel.getId());
			menuModel.setChildMenu(ZiMenu);
		}
		request.getSession().setAttribute("Menu",FuMenu);//最大list集合
		result = "success1";
		return result;
	}
	

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
}
