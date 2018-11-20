package com.dhcc.common.database;

import java.sql.*;
import org.apache.log4j.Logger;
import com.mchange.v2.c3p0.*;
import com.dhcc.common.util.SystemConfig;
import com.dhcc.common.util.SystemConfig_;
/**
 * 数据库建立管理实现类
 * @author itims
 */

public class DBConnectionManager_ {
	
	private static final Logger logger = Logger.getLogger(DBConnectionManager_.class);
	private static ComboPooledDataSource cpds = null;

	private static void init() {
		
		if(cpds==null)
		{
		// 建立数据库连接池
		String DRIVER_NAME = SystemConfig_.getConfigInfomation("DRIVER_NAME"); // 驱动器
		String DATABASE_URL = SystemConfig_.getConfigInfomation("DATABASE_URL"); // 数据库连接url
		String DATABASE_USER = SystemConfig_
				.getConfigInfomation("DATABASE_USER"); // 数据库用户名
		String DATABASE_PASSWORD = SystemConfig_
				.getConfigInfomation("DATABASE_PASSWORD"); // 数据库密码
		
		int Min_PoolSize = 5;
		int Max_PoolSize = 50;
		int Acquire_Increment = 5;
		int Initial_PoolSize = 10;
		int Idle_Test_Period = 3000;// 每隔3000s测试连接是否可以正常使用
		int MAX_IdleTime=60;
		int Timeout=10000;//
		int CheckoutTimeout=30000;
		int NumHelperThreads=3;
		
		
		String Validate = SystemConfig_.getConfigInfomation("Validate");// 每次连接验证连接是否可用
		if (Validate.equals("")) {
			Validate = "false";
		}
		// 最小连接数
		try {
			Min_PoolSize = Integer.parseInt(SystemConfig_
					.getConfigInfomation("Min_PoolSize"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// 增量条数
		try {
			Acquire_Increment = Integer.parseInt(SystemConfig_
					.getConfigInfomation("Acquire_Increment"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// 最大连接数
		try {
			Max_PoolSize = Integer.parseInt(SystemConfig_
					.getConfigInfomation("Max_PoolSize"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// 初始化连接数
		try {
			Initial_PoolSize = Integer.parseInt(SystemConfig_
					.getConfigInfomation("Initial_PoolSize"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// 每隔3000s测试连接是否可以正常使用
		try {
			Idle_Test_Period = Integer.parseInt(SystemConfig_
					.getConfigInfomation("Idle_Test_Period"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		// 
		try {
			MAX_IdleTime = Integer.parseInt(SystemConfig_
					.getConfigInfomation("MAX_IdleTime"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		try {
			CheckoutTimeout = Integer.parseInt(SystemConfig_
					.getConfigInfomation("CheckoutTimeout"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		try {
			NumHelperThreads = Integer.parseInt(SystemConfig_
					.getConfigInfomation("NumHelperThreads"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		

		try {
			cpds = new ComboPooledDataSource();
			cpds.setDriverClass(DRIVER_NAME); // 驱动器
			cpds.setJdbcUrl(DATABASE_URL); // 数据库url
			cpds.setUser(DATABASE_USER); // 用户名
			cpds.setPassword(DATABASE_PASSWORD); // 密码
			cpds.setInitialPoolSize(Initial_PoolSize); // 初始化连接池大小
			cpds.setMinPoolSize(Min_PoolSize); // 最少连接数
			cpds.setMaxPoolSize(Max_PoolSize); // 最大连接数
			cpds.setAcquireIncrement(Acquire_Increment); // 连接数的增量
			cpds.setIdleConnectionTestPeriod(Idle_Test_Period); //测连接有效的时间间隔
			cpds.setTestConnectionOnCheckout(Boolean.getBoolean(Validate)); // 每次连接验证连接是否可用
			cpds.setMaxIdleTime(MAX_IdleTime);
			cpds.setCheckoutTimeout(CheckoutTimeout);
			cpds.setAutoCommitOnClose(true);
			cpds.setNumHelperThreads(NumHelperThreads);
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		}
		
	}

	

	/**
	 * 获取数据连接池
	 * @return
	 */
    public static synchronized Connection getConnection() {    
        Connection con = null;    
        try {  
        	if (cpds == null) {
				init();
			}
        	
            con = cpds.getConnection();    
        } catch (SQLException e1) {    
            e1.printStackTrace();    
        }    
        return con;    
    }  
	
	
	
	
	/**
	 * 
	 * 关闭数据库连接（关闭数据源）
	 * 
	 */
	private static void release() {
		try {
			if (cpds != null) {
				cpds.close();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public static void main(String arg[]) throws SQLException
	{
		
		DBConnectionManager_ db=new DBConnectionManager_();
        db.getConnection();
        logger.info("获取数据库的链接。。。。");
        String SQL="select * from user";
        Connection con = null;    
        con= db.getConnection();
        //PreparedStatement pstmt = null;    
        //pstmt = con.prepareStatement(sql);    
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(SQL);//数据库查询
        boolean flag=false;
        while(rs.next()) {    
            // 如果有记录，则执行此段代码    
            // 用户是合法的，可以登陆    
            flag = true;   
            logger.info(rs.getString("u_name"));
           }  
        db.release();
        logger.info("运行成功==="+flag);
	}
}