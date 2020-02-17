package com.batch.service;

import com.batch.bean.Admin;


public interface ServiceAdmin {
	public abstract int saveAdmin(Admin admin);
	public abstract boolean loginAdmin(String email,String password);
}
