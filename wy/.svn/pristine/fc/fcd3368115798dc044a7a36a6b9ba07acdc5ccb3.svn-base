package com.dhcc.bussiness.permissions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.bussiness.User.UserModel;
import com.dhcc.bussiness.login.InitUserModel;
import com.dhcc.bussiness.page.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PermissionsAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(PermissionsAction.class);
	private PermissionsDao dao = new PermissionsDao();
	private String _id;
	private String result;
	private String phone;
	private SQQuery model;
	private String xxggchaxunquanxian__;
	private String xxggcaozuoquanxian__;
	private String xxggid__;
	private String fkhdchaxunquanxian__;
	private String fkhdcaozuoquanxian__;
	private String fkhdid__;
	private String ddlbchaxunquanxian__;
	private String ddlbcaozuoquanxian__;
	private String ddlbid__;
	private String fyglchaxunquanxian__;
	private String fyglcaozuoquanxian__;
	private String fyglid__;
	private String fjcxchaxunquanxian__;
	private String fjcxcaozuoquanxian__;
	private String fjcxid__;
	private String tjfxchaxunquanxian__;
	private String tjfxcaozuoquanxian__;
	private String tjfxid__;
	private List<SQList> sqlist;
	private SearchModel searchmodel;
	private String shouquanzhanghao;
	private String houduan_userid;
	private Wy_permissions_userModel wy_permissions_userModel;
	//分页start
	private Integer currentPage;
	private Integer currentCount = 10;
	private PageBean<Wy_permissions_userModel> pageBean;
	private PermissionsService permissionsService = new PermissionsService();
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
	public PageBean<Wy_permissions_userModel> getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean<Wy_permissions_userModel> pageBean) {
		this.pageBean = pageBean;
	}
	//分页end
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public SQQuery getModel() {
		return model;
	}
	public void setModel(SQQuery model) {
		this.model = model;
	}
	public Wy_permissions_userModel getWy_permissions_userModel() {
		return wy_permissions_userModel;
	}
	public void setWy_permissions_userModel(
			Wy_permissions_userModel wy_permissions_userModel) {
		this.wy_permissions_userModel = wy_permissions_userModel;
	}
	public List<SQList> getSqlist() {
		return sqlist;
	}
	public void setSqlist(List<SQList> sqlist) {
		this.sqlist = sqlist;
	}
	public SearchModel getSearchmodel() {
		return searchmodel;
	}
	public void setSearchmodel(SearchModel searchmodel) {
		this.searchmodel = searchmodel;
	}
	public String getShouquanzhanghao() {
		return shouquanzhanghao;
	}
	public void setShouquanzhanghao(String shouquanzhanghao) {
		this.shouquanzhanghao = shouquanzhanghao;
	}
	public String getHouduan_userid() {
		return houduan_userid;
	}
	public void setHouduan_userid(String houduan_userid) {
		this.houduan_userid = houduan_userid;
	}
	public String getXxggchaxunquanxian__() {
		return xxggchaxunquanxian__;
	}
	public void setXxggchaxunquanxian__(String xxggchaxunquanxian__) {
		this.xxggchaxunquanxian__ = xxggchaxunquanxian__;
	}
	public String getXxggcaozuoquanxian__() {
		return xxggcaozuoquanxian__;
	}
	public void setXxggcaozuoquanxian__(String xxggcaozuoquanxian__) {
		this.xxggcaozuoquanxian__ = xxggcaozuoquanxian__;
	}
	public String getXxggid__() {
		return xxggid__;
	}
	public void setXxggid__(String xxggid__) {
		this.xxggid__ = xxggid__;
	}
	public String getFkhdchaxunquanxian__() {
		return fkhdchaxunquanxian__;
	}
	public void setFkhdchaxunquanxian__(String fkhdchaxunquanxian__) {
		this.fkhdchaxunquanxian__ = fkhdchaxunquanxian__;
	}
	public String getFkhdcaozuoquanxian__() {
		return fkhdcaozuoquanxian__;
	}
	public void setFkhdcaozuoquanxian__(String fkhdcaozuoquanxian__) {
		this.fkhdcaozuoquanxian__ = fkhdcaozuoquanxian__;
	}
	public String getFkhdid__() {
		return fkhdid__;
	}
	public void setFkhdid__(String fkhdid__) {
		this.fkhdid__ = fkhdid__;
	}
	public String getDdlbchaxunquanxian__() {
		return ddlbchaxunquanxian__;
	}
	public void setDdlbchaxunquanxian__(String ddlbchaxunquanxian__) {
		this.ddlbchaxunquanxian__ = ddlbchaxunquanxian__;
	}
	public String getDdlbcaozuoquanxian__() {
		return ddlbcaozuoquanxian__;
	}
	public void setDdlbcaozuoquanxian__(String ddlbcaozuoquanxian__) {
		this.ddlbcaozuoquanxian__ = ddlbcaozuoquanxian__;
	}
	public String getDdlbid__() {
		return ddlbid__;
	}
	public void setDdlbid__(String ddlbid__) {
		this.ddlbid__ = ddlbid__;
	}
	public String getFyglchaxunquanxian__() {
		return fyglchaxunquanxian__;
	}
	public void setFyglchaxunquanxian__(String fyglchaxunquanxian__) {
		this.fyglchaxunquanxian__ = fyglchaxunquanxian__;
	}
	public String getFyglcaozuoquanxian__() {
		return fyglcaozuoquanxian__;
	}
	public void setFyglcaozuoquanxian__(String fyglcaozuoquanxian__) {
		this.fyglcaozuoquanxian__ = fyglcaozuoquanxian__;
	}
	public String getFyglid__() {
		return fyglid__;
	}
	public void setFyglid__(String fyglid__) {
		this.fyglid__ = fyglid__;
	}
	public String getFjcxchaxunquanxian__() {
		return fjcxchaxunquanxian__;
	}
	public void setFjcxchaxunquanxian__(String fjcxchaxunquanxian__) {
		this.fjcxchaxunquanxian__ = fjcxchaxunquanxian__;
	}
	public String getFjcxcaozuoquanxian__() {
		return fjcxcaozuoquanxian__;
	}
	public void setFjcxcaozuoquanxian__(String fjcxcaozuoquanxian__) {
		this.fjcxcaozuoquanxian__ = fjcxcaozuoquanxian__;
	}
	public String getFjcxid__() {
		return fjcxid__;
	}
	public void setFjcxid__(String fjcxid__) {
		this.fjcxid__ = fjcxid__;
	}
	public String getTjfxchaxunquanxian__() {
		return tjfxchaxunquanxian__;
	}
	public void setTjfxchaxunquanxian__(String tjfxchaxunquanxian__) {
		this.tjfxchaxunquanxian__ = tjfxchaxunquanxian__;
	}
	public String getTjfxcaozuoquanxian__() {
		return tjfxcaozuoquanxian__;
	}
	public void setTjfxcaozuoquanxian__(String tjfxcaozuoquanxian__) {
		this.tjfxcaozuoquanxian__ = tjfxcaozuoquanxian__;
	}
	public String getTjfxid__() {
		return tjfxid__;
	}
	public void setTjfxid__(String tjfxid__) {
		this.tjfxid__ = tjfxid__;
	}
	public PermissionsService getPermissionsService() {
		return permissionsService;
	}
	public void setPermissionsService(PermissionsService permissionsService) {
		this.permissionsService = permissionsService;
	}
	/**
	 * 初始化进入权限管理列表
	 */
	public String findPermissionsByPage() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int currentPage = Integer.parseInt(request.getParameter("currentPage")==null?"1":request.getParameter("currentPage"));//规定是第一页
		pageBean = permissionsService.findPermissionsByPage(currentPage,currentCount);
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		return "quanxianlist";
	}
	
	/**
	 * 权限管理删除一条数据
	 */
	public String delPermissionsId() {
		int i = dao.delPermissionsId(_id);
		if(i>0){
			result = "success";
		}
		return SUCCESS;
	}
	
	/**
	 * 编辑授权
	 */
	public String shouquanData() {
		int i  = dao.shouquanData_update(xxggchaxunquanxian__,xxggcaozuoquanxian__,xxggid__,fkhdchaxunquanxian__,fkhdcaozuoquanxian__,fkhdid__,ddlbchaxunquanxian__,
				ddlbcaozuoquanxian__,ddlbid__,fyglchaxunquanxian__,fyglcaozuoquanxian__,fyglid__,fjcxchaxunquanxian__,fjcxcaozuoquanxian__,fjcxid__,
				tjfxchaxunquanxian__,tjfxcaozuoquanxian__,tjfxid__);
		if(i>0){
			result = "success";
		}else{
			result = "fail";
		}
		return SUCCESS;
	}
	
	/**
	 * 添加人员
	 */
	public String addRenyuan() {
		wy_permissions_userModel.setStatus("1");//1已绑定 2未绑定
		wy_permissions_userModel.setId(wy_permissions_userModel.getId());//用户id
		wy_permissions_userModel.setAuthorized_t(wy_permissions_userModel.getAuthorized_t());
		InitUserModel m = dao.queryUsercunzai(houduan_userid,wy_permissions_userModel.getId());//id是(userid),eail是(绑定的userid)
		if(m != null){
			result = "cunfu";
		}else{
			int i = dao.addRenyuan(wy_permissions_userModel,houduan_userid);
			if(i>0){
				int jj  = dao.shouquanData(houduan_userid,wy_permissions_userModel.getId());
				if(jj>0){
					result = "success";					
				}
			}else{
				result = "fail";
			}
		}
		return SUCCESS;
	}
	
	/**
	 * 查询人员
	 */
	public String queryRenyuan() {
		model = dao.queryRenyuan(phone);
		return SUCCESS;
	}
	
	/**
	 * 编辑授权初始化
	 */
	public String shouquanDataId() {
		SearchModel mm = dao.shouquanDataId(_id,result,phone);
		if(mm != null){
			String userid = mm.getNickname();
			String bd_userid = mm.getHead_img();
			sqlist = dao.shouquanDataId_new(userid,bd_userid);
		}
		return SUCCESS;
	}
	
	public String userSearchResult(){
		searchmodel = dao.userSearchResult(shouquanzhanghao);
		if(searchmodel != null){
			result = "success";
		}else{
			result = "fail";
		}
		return SUCCESS;
	}
	
	public static void main(String[] args) {
		System.out.println(System.currentTimeMillis()+"");
	}
}
