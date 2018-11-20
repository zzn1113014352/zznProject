package com.dhcc.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.log4j.Logger;
/**
 * @author  侯兵
 * @date    2016-3-25
 * @class   FTPTools.java
 * @package com.dhcc.common.util
 */
public class FTPTools {
	private static Logger logger = Logger.getLogger(FTPTools.class);
  /**
  *@Methoed loginftp
  *@param url
  *@param port
  *@param username
  *@param password
  *@return ftp
  *@Return_type FTPClient
  *@TODO:登录ftp服务器
  */
	public static FTPClient loginftp() {
		String url = FtpConfig.getConfigInfomation("FTP_ADDRESS");
		String username = FtpConfig.getConfigInfomation("FTP_USERNAME");
		String password = FtpConfig.getConfigInfomation("FTP_PASSWORD");
		int port = Integer.parseInt(FtpConfig.getConfigInfomation("FTP_IPPORT"));
		logger.info("FTP服务器登录信息"+url+"/"+username+"/"+password+"/"+port);
		FTPClient ftp = new FTPClient();
		ftp.setDefaultTimeout(20000);
		ftp.setConnectTimeout(20000);
		ftp.setDataTimeout(50000);
		ftp.setControlEncoding("UTF-8");
		try {
			//设置客户端是被动模式
			ftp.enterLocalPassiveMode();
			ftp.enterRemotePassiveMode();
			String system = ftp.getSystemType();
			logger.info("ftp服务系统："+system);
		} catch (IOException e) {
			 StringWriter sw = new StringWriter();  
             PrintWriter pw = new PrintWriter(sw);  
             e.printStackTrace(pw); 
		}
		try {
			int reply;
			logger.info("正在连接 FTP服务器...........");
			switch(port){
			case 0:
				ftp.connect(url);// 连接FTP服务器采用默认端口
			break;
			default:
				ftp.connect(url, port);//连接FTP采用给定的端口
				break;
			}
			ftp.login(username, password);// 登录
			logger.info("正在登录 FTP服务器.............");
			reply = ftp.getReplyCode();
			if (!FTPReply.isPositiveCompletion(reply)) {
				ftp.disconnect();
				logger.info("登录FTP服务器失败");
				ftp=null;				
			} else {
				logger.info("登录FTP服务器成功");
			}
		} catch (IOException e) {
			 StringWriter sw = new StringWriter();  
             PrintWriter pw = new PrintWriter(sw);  
             e.printStackTrace(pw); 
             logger.info("连接ftp服务器异常:"+sw.toString());			
		} 
		return ftp;
	}
	/**
	  *@Methoed disconnect
	  *@param ftp
	  *@return flag
	  *@Return_type boolean
	  *@TODO: 断开ftp连接
	 */
public boolean disconnect(FTPClient ftp){
	boolean flag=false;
	if (ftp.isConnected()) {
		try {
			ftp.disconnect();
			logger.info("与FTP服务器断开连接");
		} catch (IOException ioe) {
			 StringWriter sw = new StringWriter();  
             PrintWriter pw = new PrintWriter(sw);  
             ioe.printStackTrace(pw); 
             logger.info("与FTP服务器断开连接异常:"+sw.toString());		
		}
	}
	return flag;
}
	/**
	  *@param path FTP服务器保存目录
	  *@param filename 上传到FTP服务器上的文件名
	  *@param orginfilename 输入流文件名
	  *@return
	  *@Return_type boolean
	  *@TODO: 上传文件
	 */
	public static boolean upLoadfile(String path,String filename,String orginfilename) {
		try {
			FileInputStream in = new FileInputStream(orginfilename);
			boolean flag=false;
			FTPClient ftp = loginftp();
			if(ftp!=null){
				ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
				ftp.makeDirectory(path);
				ftp.changeWorkingDirectory(path);
				ftp.storeFile(filename, in);
				in.close();
				ftp.logout();
				flag=true;
			}
			if (flag == true) {
				logger.info("文件上传成功");
			} else {
				logger.info("文件上传失败");
			}
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("上传文件发生异常");
			return false;
		}
	}
	/**
	  *@Methoed downloadfile
	  *@param remotePath
	  *@param fileName
	  *@param localPath
	  *@Return_type void
	  *@TODO: 下载文件
	 */
   public int downloadfile(String remotePath,String fileName,String localPath){
	 FTPClient ftpClient = loginftp();
	ArrayList<String> list = new ArrayList<String>();
	String filenamelist="";
	 try{
	 if(ftpClient!=null){
		 String workdir = ftpClient.printWorkingDirectory();
         logger.info("初始工作目录--->>>"+workdir);
		 boolean dir = ftpClient.changeWorkingDirectory(new String(remotePath.getBytes("UTF-8"),"iso-8859-1"));
		 String workdirs = ftpClient.printWorkingDirectory();
		 logger.info("切换工作目录是否成功："+workdirs+"|" +dir);
         // 获取文件列表
         FTPFile[] fs = ftpClient.listFiles();
         logger.info("文件数目---->>>>"+fs.length);
         for (FTPFile ff : fs) {
        	 logger.info(ff.getName());
             if (ff.getName().equals(fileName)) {
                 File localFile = new File(localPath + File.separator + ff.getName());
                 logger.info("下载文件的名称----->>>"+ff.getName());
                 OutputStream is = new FileOutputStream(localFile);
                 ftpClient.retrieveFile(ff.getName(), is);
                 is.close();
                 list.add(fileName);
             }
         }
         disconnect(ftpClient);
         switch(list.size()){
         case 0:
        	 logger.info("下载的文件不存在或者下载当中发生错误");
        	 break;
        	 default:
        		 for(String filename:list){
        			 filenamelist  +=filename+"|";
        		 }
        	 logger.info("成功下载"+list.size()+"个文件:"+filenamelist.substring(0, filenamelist.length()-1));
        	 break;
         }
	 }
	 }catch(Exception e){
		 StringWriter sw = new StringWriter();  
         PrintWriter pw = new PrintWriter(sw);  
         e.printStackTrace(pw); 
         logger.info("FTP服务器下载异常:"+sw.toString());		
	}
	
	
	return list.size();
}
//	public static void main(String[] args) throws Exception {
//	FTPTools ftp = new FTPTools();
//	ftp.downloadfile("SMSReceiver", "060_01020150902.txt", "I:");
//				
//}
}