package com.tourism.service;

import com.tourism.pojo.Admin;

public interface AdminService {
		//根据ID查找管理员
		Admin findById(int adminId);
		//根据账号查找管理员
		Admin findByAccount(String adminAccount);
		//更新管理员信息
		void updateAdmin(Admin admin);
		//根据管理员ID得到用户账号余额
		float getByMoney(int adminID);
		//根据管理员ID更新余额
		void updateMoney(int adminId,float money);
		//新增管理员
		void insertAdmin(Admin admin);
		//更新密码
		void updateAdminPassword(String adminPassword,String adminAccount);
		
}
