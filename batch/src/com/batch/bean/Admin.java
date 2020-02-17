package com.batch.bean;

public class Admin {
	private int adminId;
	private String adminName;
	private String adminEmail;
	private String adminMobile;
	private String adminDesignation;
	private String adminPassword;
	private String adminRepassword;
	

	public Admin() {}
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminMobile() {
		return adminMobile;
	}
	public void setAdminMobile(String adminMobile) {
		this.adminMobile = adminMobile;
	}
	public String getAdminDesignation() {
		return adminDesignation;
	}
	public void setAdminDesignation(String adminDesignation) {
		this.adminDesignation = adminDesignation;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public String getAdminRepassword() {
		return adminRepassword;
	}
	public void setAdminRepassword(String adminRepassword) {
		this.adminRepassword = adminRepassword;
	}
	
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", adminEmail=" + adminEmail
				+ ", adminMobile=" + adminMobile + ", adminDesignation=" + adminDesignation + ", adminPassword="
				+ adminPassword + ", adminRepassword=" + adminRepassword + "]";
	}
}
