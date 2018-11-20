package com.dhcc.common.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.log4j.Logger;
/**
 * @author  侯兵
 * @date    2016-4-15
 * @class   FTPTool.java
 * @package com.dhcc.common.util
 */
public class FTPTool {
  private static Logger logger = Logger.getLogger(FTPTool.class);
  private static FTPClient loginftp(){
	String hostname = FtpConfig.getConfigInfomation("FTP_ADDRESS");
	String username = FtpConfig.getConfigInfomation("FTP_USERNAME");
	String password = FtpConfig.getConfigInfomation("FTP_PASSWORD");
    int port = Integer.parseInt(FtpConfig.getConfigInfomation("FTP_IPPORT"));
        FTPClient ftpClient = new FTPClient();
		FTPClientConfig conf = new FTPClientConfig( FTPClientConfig.SYST_UNIX);
		ftpClient.configure(conf);
	
		try {
			//ftpClient.setActiveExternalIPAddress(hostname);
			int reply;
			logger.info("正在连接 FTP服务器...........");
			switch(port){
			case 0:
				ftpClient.connect(hostname);// 连接FTP服务器采用默认端口
			break;
			default:
				ftpClient.connect(hostname, port);//连接FTP采用给定的端口
				break;
			}
			ftpClient.login(username, password);// 登录
			logger.info("正在登录 FTP服务器.............");
			reply = ftpClient.getReplyCode();
			if (!FTPReply.isPositiveCompletion(reply)) {
				ftpClient.disconnect();
				logger.info("登录FTP服务器失败");
				ftpClient=null;				
			} else {
				logger.info("登录FTP服务器成功");
			}
		} catch (Exception e) {
			 StringWriter sw = new StringWriter();  
             PrintWriter pw = new PrintWriter(sw);  
             e.printStackTrace(pw); 
             logger.info("连接ftp服务器异常:"+sw.toString());		
		}
		return  ftpClient;
		}
  /**
    *@Methoed startdownloadfile
    *@param localBaseDir
    *@param filename
    *@return int
 * @throws IOException 
    *@Return_type int
    *@TODO: 下载对应的文件
   */
	public int startdownloadfile (String localBaseDir,String filename) throws IOException{
		int n=0;
		FTPClient ftpClient = loginftp();
		try {
			if(ftpClient!=null){
				FTPFile[] files = null;
				String remoteBaseDir = FtpConfig.getConfigInfomation("FTP_ROOT");
				boolean changedir = ftpClient.changeWorkingDirectory(remoteBaseDir.trim().replace(" ", ""));
				logger.info(remoteBaseDir+"路径是否存在---->>"+changedir);
				if (changedir) {
					files = ftpClient.listFiles();
					for (int i = 0; i < files.length; i++) {				
						if(filename.equals(files[i].getName())){
						downloadFile(files[i], localBaseDir, remoteBaseDir,ftpClient);	
						n++;
						logger.info("成功下载文件--->>"+files[i].getName());
						}
					}
					
			      }
				
			   }
		} catch (Exception e) {
			 StringWriter sw = new StringWriter();  
             PrintWriter pw = new PrintWriter(sw);  
             e.printStackTrace(pw); 
             logger.info("ftp服务器文件下载异常:"+sw.toString());	
		}finally{
			if(ftpClient!=null){
				ftpClient.disconnect();
				logger.info("关闭ftp连接");
			}
		}
		return n;
	}
/**
  *@Methoed downloadFile
  *@param ftpFile
  *@param relativeLocalPath
  *@param relativeRemotePath
  *@param ftpClient
  *@Return_type void
  *@TODO:
 */
	private void downloadFile(FTPFile ftpFile, String relativeLocalPath,String relativeRemotePath,FTPClient ftpClient ) {
		if (ftpFile.isFile()) {// down file
			if (ftpFile.getName().indexOf("?") == -1) {
				OutputStream outputStream = null;
				try {
					outputStream = new FileOutputStream(relativeLocalPath
							+ ftpFile.getName());
					ftpClient.retrieveFile(ftpFile.getName(), outputStream);
					outputStream.flush();
					outputStream.close();
				} catch (Exception e) {
					 StringWriter sw = new StringWriter();  
		             PrintWriter pw = new PrintWriter(sw);  
		             e.printStackTrace(pw); 
		             logger.info("ftp服务器文件下载异常1:"+sw.toString());	
				} finally {
					try {
						if (outputStream != null)
							outputStream.close();
					} catch (IOException e) {
						 StringWriter sw = new StringWriter();  
			             PrintWriter pw = new PrintWriter(sw);  
			             e.printStackTrace(pw); 
			             logger.info("ftp服务器文件下载异常2:"+sw.toString());	
					}
				}
			}
		} else { // deal dirctory
			String newlocalRelatePath = relativeLocalPath + ftpFile.getName();
			String newRemote = new String(relativeRemotePath
					+ ftpFile.getName().toString());

			File fl = new File(newlocalRelatePath);
			if (!fl.exists()) {
				fl.mkdirs();
			}
			try {
				newlocalRelatePath = newlocalRelatePath + '/';
				newRemote = newRemote + "/";
				String currentWorkDir = ftpFile.getName().toString();
				// enter relative workdirectory
				boolean changedir = ftpClient
						.changeWorkingDirectory(currentWorkDir);
				if (changedir) {
					FTPFile[] files = null;
					files = ftpClient.listFiles();
					for (int i = 0; i < files.length; i++) {
						downloadFile(files[i], newlocalRelatePath, newRemote,ftpClient);
					}
				}
				// return parent directory
				if (changedir)
					ftpClient.changeToParentDirectory();
			} catch (Exception e) {
				 StringWriter sw = new StringWriter();  
	             PrintWriter pw = new PrintWriter(sw);  
	             e.printStackTrace(pw); 
	             logger.info("ftp服务器文件下载异常3:"+sw.toString());	
			}
		}
	}
public static void main(String[] args) throws IOException {
	FTPTool tool = new FTPTool();
	tool.startdownloadfile( "I:","060_01020150902.txt");
}
}