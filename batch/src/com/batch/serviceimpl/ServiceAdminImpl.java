package com.batch.serviceimpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.batch.DBConnectionInfo;
import com.batch.bean.Admin;
import com.batch.service.ServiceAdmin;

public class ServiceAdminImpl implements ServiceAdmin{
	

	DBConnectionInfo connectionInfo=null;
	
	public ServiceAdminImpl() {
		 connectionInfo=new DBConnectionInfo();
	}

	
	@Override
	public int saveAdmin(Admin admin) {
		int status=0;
		try{
			Connection connection=connectionInfo.getDBConnectionInfo();
			String query="{call batch.saveAdmin(?,?,?,?,?)}";
			CallableStatement statement=connection.prepareCall(query);
			statement.setNString(1, admin.getAdminName());
			statement.setNString(2, admin.getAdminEmail());
			statement.setNString(3, admin.getAdminMobile());
			statement.setNString(4, admin.getAdminDesignation());
			statement.setNString(5, admin.getAdminPassword());
			status=statement.executeUpdate();
			if(status>0){
				//connection.commit();
				connection.close();
				return status;
			}else{
				connection.rollback();
				connection.close();
				return status;
			}
		}catch (Exception e) {
			System.out.println("ServiceAdminImpl:saveAdmin"+e);
		}
		return status;
	}


	@Override
	public boolean loginAdmin(String email, String password) {
		boolean status=false;
		try{
			Connection connection=connectionInfo.getDBConnectionInfo();
			String sql="{call batch.loginAdmin(?,?)}";
			CallableStatement statement=connection.prepareCall(sql);
			statement.setString(1, email);
			statement.setString(2, password);
			ResultSet set=statement.executeQuery();
			if(set.next()){
				return status=true;
			}else{
				return status=false;
			}
		}catch(Exception exception){
			System.out.println("ServiceAdminImpl:loginAdmin"+exception);
		}
		return status;
	}

}
