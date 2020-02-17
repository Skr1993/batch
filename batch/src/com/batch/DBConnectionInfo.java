package com.batch;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
public class DBConnectionInfo {
	
	InputStream inputStream=null;
	Connection connection=null;
	
	public Connection getDBConnectionInfo(){
		try {
			
			inputStream=DBConnectionInfo.class.getClassLoader().getResourceAsStream("dbproperties//DBINFO.properties");
			Properties properties=new Properties();
			properties.load(inputStream);
			Class.forName(properties.getProperty("driver"));
			connection=DriverManager.getConnection(properties.getProperty("url"),properties.getProperty("user"), properties.getProperty("password"));
		} catch (Exception e) {
			System.out.println("DBConnectionInfo:getDBConnectionInfo: "+e);
		}
		return connection;
	}
	
	/*public static void main(String[] args) {
		DBConnectionInfo info=new DBConnectionInfo();
		System.out.println(info.getDBConnectionInfo());
	}*/
}
