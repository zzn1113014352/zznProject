package com.dhcc.bussiness.notice;

import java.util.List;

import org.apache.log4j.Logger;

import com.dhcc.common.database.DBManager;
import com.dhcc.common.util.StringUtil;
import com.dhcc.utils.PageFactory;
import com.dhcc.utils.PageModel;

public class NoticeDao {
	private static final Logger logger = Logger.getLogger(NoticeDao.class);
	@SuppressWarnings("unchecked")
	public 	PageModel noticeQueryList(PageModel pm,String content){
		DBManager dbm=new DBManager();
		List<NoticeModel> list = null;
		try {
			String querysql = "SELECT (@i :=@i + 1) AS id_s,n.id,n.content ,n.state,n.type, FROM_UNIXTIME( n.addtime/1000,'%Y-%m-%d')as addtime"+
			" FROM notice n,(SELECT @i := 0) AS it "+
			"WHERE 1=1";
			if(!StringUtil.isNullOrEmpty(content) && !"null".equals(content)){//内容
				querysql += " and n.content  like '%"+ content +"%' ";
			}
			querysql += " group by id order by addtime desc";
			String countsql = "select count(*) from (" + querysql + ")t";
			int count =dbm.executeQueryCount(countsql);
			int total = count % pm.getPerPage() == 0 ? count /pm.getPerPage() : count / pm.getPerPage() + 1;
			pm.setTotalPage(total);
			pm.setTotalRecord(count);
			PageFactory pageFactory = new PageFactory();
			String sql = pageFactory.createPageSQL(querysql, pm);
			pageFactory = null;
			list = dbm.getObjectList(NoticeModel.class, sql);
			pm.setList(list);
		} catch (Exception e){			
			e.printStackTrace();
			logger.error("查询列表时候出错！"+e.getMessage());
		}finally{
			dbm.close();
		}
		return pm;
	}

	 /**
     * @param ids id的数据数组
     * 通知删除
     * @return
     */
	public String noticeDel(String[] ids){
		String sql = "";
		DBManager dbm = new DBManager();
		try {
			for (String id : ids) {
				sql = "delete from notice where id='" + id + "'";
				dbm.addBatch(sql);
			}
			dbm.executeBatch();
		} catch (Exception e) {
			logger.error("服务通知消息删除--失败",e);
			return "error";
		} finally {
			dbm.close();
		}
		return "success";
	}
	
	//查看单个
	public NoticeModel noticeQueryById(Integer id){
		DBManager dbm = new DBManager();
		NoticeModel model = null;
		try {
			String querysql = "select n.content,n.type " +
					"from notice n " +
					"where n.id = '"+id+"'";
			model = (NoticeModel) dbm.getObject(NoticeModel.class, querysql);
		} catch (Exception e) {
			logger.info(e);
			return model;
		}finally{
			dbm.close();
		}
		return model;
	}
	/**
	 * 更新读取时间
	 * @param id
	 * @return
	 */
	public boolean updateNotice(Integer id,String type,String content){
		DBManager dbm = new DBManager();
		int flag = 0;
		try {
			String updatesql = "update notice set type='"+ type +"',content= '"+ content +"'  where id = '"+ id +"'";
			flag = dbm.executeUpdate(updatesql);
		} catch (Exception e) {
			logger.info(e);
			return false;
		}finally{
			dbm.close();
		}
		if(flag > 0){
			return true;
		}
		return false;
	}
	//添加服务通知
	   public  int  noticeAdd(NoticeModel model){
	    	DBManager dbm = new DBManager();
	    	int i=0;
			try {
				String sql = "insert into notice(type,addtime,content,state) values('"+ model.getType() +"','"+ model.getAddtime() +"','"+ model.getContent() +"','"+ model.getState() +"')";
				i = dbm.executeUpdate(sql);
			} catch (Exception e) {
				logger.error(e);
			}finally{
	    	  dbm.close();
			}
	    	return i;
	    }
	 //改变字体颜色
	   public boolean updateNoticeState(Integer state,Integer id){
			DBManager dbm = new DBManager();
			int flag = 0;
			try {
				String updatesql = "update notice set state='"+ state +"'  where id = '"+ id +"'";
				flag = dbm.executeUpdate(updatesql);
			} catch (Exception e) {
				logger.info(e);
				return false;
			}finally{
				dbm.close();
			}
			if(flag > 0){
				return true;
			}
			return false;
		}
	
}

