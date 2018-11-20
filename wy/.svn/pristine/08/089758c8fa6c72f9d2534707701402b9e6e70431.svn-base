package com.dhcc.common.util;
import java.util.ResourceBundle;


/**
 * 读取配置文件的类
 */
public class FtpConfig {
	
    private static final String configFile = "FTPConfig";//配置文件名称
    
    public static String getConfigInfomation(String itemIndex) {
        try {
            ResourceBundle resource = ResourceBundle.getBundle(configFile);
            return resource.getString(itemIndex);
        } catch (Exception e) {
            return "";
        }
    }
  
}


