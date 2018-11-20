package com.dhcc.bussiness.house;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.dhcc.common.util.CommUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(UploadAction.class);
	private File file;
	private String fileFileName;//本来的文件名称
	private String spath;//服务端保存的文件路径
	private String filesize;//上传文件的大小
	private String message;//上传文件执行结果
	private UploadDao dao = new UploadDao();
	private String id;
	private List<UploadModel> upModel;
	
	public File getFile() {
		return file;
	}
	public List<UploadModel> getUpModel() {
		return upModel;
	}
	public void setUpModel(List<UploadModel> upModel) {
		this.upModel = upModel;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	//查询已上传的图片
	public String queryHouseImg(){
		upModel = dao.queryImg(id);
		ActionContext.getContext().getSession().put("upModel", upModel);
		return SUCCESS;
	}
	
	//上传文件
		public String uploadHouse2() throws IOException{
			logger.info("====上传开始====");
			Calendar now = Calendar.getInstance();  
	        String year = now.get(Calendar.YEAR)+"";
	        String month = (now.get(Calendar.MONTH) + 1) + "";
	        String days = now.get(Calendar.DAY_OF_MONTH)+"";
	        String hours = now.get(Calendar.HOUR_OF_DAY)+"";
	        String minute = now.get(Calendar.MINUTE)+"";
	        String second = now.get(Calendar.SECOND)+"";
	    	String newsfileName = "";
	    	String fileId = CommUtil.getID();
	    	if(fileFileName.indexOf(".")>=0){//带后缀的
				String intNumber = fileFileName.substring(0,fileFileName.indexOf("."));
	    		newsfileName = fileId+"-"+year+month+days+hours+minute+second+getExtention(fileFileName);
	    	}else{
	    		newsfileName = fileId;//防止重复生成新的文件名称
	    	}
	    	logger.info(ServletActionContext.getServletContext().getRealPath( "/house_agreement"));
	    	String filePath = ServletActionContext.getServletContext().getRealPath( "/house_agreement");//得到当前的服务端的路径fileupload的路径；
	    	filePath = "/soft/apache-tomcat-7.0.91/webapps/house_agreement";
	    	File   myfile = new File(filePath);
	    	if(!myfile.exists()){
	    		myfile.mkdir();//如果文件夹不存在，则创建一个
	    	}
	        spath = filePath +"/"+ newsfileName;//服务端保存文件的路径
	        spath = spath.replaceAll("\\\\", "/");//替换反斜杠
	        filesize = this.getFile().length() + "";//文件的大小
	        FileInputStream inputStream = null;
	        FileOutputStream outputStream = null;
	        try {
	        	File file = new File(spath);
	        	if(!file.exists()){
	        		file.createNewFile();
	        	}
	            File f = this.getFile();
	            inputStream = new FileInputStream(f);
	            outputStream = new FileOutputStream(file);
	            byte[] buf = new byte[1024];
	            int length = 0;
	            while ((length = inputStream.read(buf)) != -1) {
	                outputStream.write(buf, 0, length);
	            }
	            int i = dao.insertHouseAgreement(id,newsfileName);
	            if(i>0){
	            	logger.info("获取到新的图片名称-------------->" + newsfileName);            	
	            }
	            	message = newsfileName;
	        } catch (Exception e) {
	            e.printStackTrace();
	            message = "error";
	        }finally{
	        	if(inputStream != null){
	        		inputStream.close();
	        	}
	        	if(outputStream != null){
	        		 outputStream.flush();
	                 outputStream.close();
	        	}
	        }
			return SUCCESS;
		}
	
	
	
	//上传文件
	public String uploadHouseFile() throws IOException{
		logger.info("====上传开始====");
		Calendar now = Calendar.getInstance();  
        String year = now.get(Calendar.YEAR)+"";
        String month = (now.get(Calendar.MONTH) + 1) + "";
        String days = now.get(Calendar.DAY_OF_MONTH)+"";
        String hours = now.get(Calendar.HOUR_OF_DAY)+"";
        String minute = now.get(Calendar.MINUTE)+"";
        String second = now.get(Calendar.SECOND)+"";
    	String newsfileName = "";
    	String fileId = CommUtil.getID();
    	if(fileFileName.indexOf(".")>=0){//带后缀的
			String intNumber = fileFileName.substring(0,fileFileName.indexOf("."));
    		newsfileName = fileId+"-"+year+month+days+hours+minute+second+getExtention(fileFileName);
    	}else{
    		newsfileName = fileId;//防止重复生成新的文件名称
    	}
    	String filePath = ServletActionContext.getServletContext().getRealPath( "/house_img");//得到当前的服务端的路径fileupload的路径；
    	filePath = "/soft/apache-tomcat-7.0.91/webapps/house_img";
    	File   myfile = new File(filePath);
    	if(!myfile.exists()){
    		myfile.mkdir();//如果文件夹不存在，则创建一个
    	}
        spath = filePath +"/"+ newsfileName;//服务端保存文件的路径
        spath = spath.replaceAll("\\\\", "/");//替换反斜杠
        filesize = this.getFile().length() + "";//文件的大小
        FileInputStream inputStream = null;
        FileOutputStream outputStream = null;
        try {
        	File file = new File(spath);
        	if(!file.exists()){
        		file.createNewFile();
        	}
            File f = this.getFile();
            inputStream = new FileInputStream(f);
            outputStream = new FileOutputStream(file);
            byte[] buf = new byte[1024];
            int length = 0;
            while ((length = inputStream.read(buf)) != -1) {
                outputStream.write(buf, 0, length);
            }
            int i = dao.insertHouseImg(id,newsfileName);
            if(i>0){
            	logger.info("获取到新的图片名称-------------->" + newsfileName);            	
            }
            	message = newsfileName;
        } catch (Exception e) {
            e.printStackTrace();
            message = "error";
        }finally{
        	if(inputStream != null){
        		inputStream.close();
        	}
        	if(outputStream != null){
        		 outputStream.flush();
                 outputStream.close();
        	}
        }
		return SUCCESS;
	}
	
	private static String getExtention(String fileName)  {
        int pos = fileName.lastIndexOf( "." );
        return fileName.substring(pos);
    }
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getSpath() {
		return spath;
	}
	public void setSpath(String spath) {
		this.spath = spath;
	}
	public String getFilesize() {
		return filesize;
	}
	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
