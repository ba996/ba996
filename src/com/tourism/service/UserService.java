package com.tourism.service;

import com.tourism.pojo.User;

public interface UserService {
	//根据ID查找用户
	User findById(int userId);
	//根据账号查找用户
	User findByAccount(String userAccount);
	//更新用户信息
	void updateUser(User user);
	//根据用户ID得到用户账号余额
	float getByMoney(int userID);
	//根据用户ID更新余额
	void updateMoney(int userId,float money);
	//新增用户
	void insertUser(User user);
	//更新密码
	void updateUserPassword(String userPassword,String userAccount);
	
	
}
