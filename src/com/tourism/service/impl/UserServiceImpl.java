package com.tourism.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.mapper.UserMapper;
import com.tourism.pojo.User;
import com.tourism.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{
@Autowired
UserMapper UserMapper;
	@Override
	public User findById(int userId) {
		// TODO Auto-generated method stub
		return UserMapper.selectByPrimaryKey(userId);
	}
	@Override
	public User findByAccount(String userAccount) {
		// TODO Auto-generated method stub
		return UserMapper.findByAccount(userAccount);
	}
	@Override
	public void updateUser(User user) {
		UserMapper.updateByPrimaryKeySelective(user);		
	}
	@Override
	public float getByMoney(int userID) {
		// TODO Auto-generated method stub
		return UserMapper.getByMoney(userID);
	}
	@Override
	public void updateMoney(int userId, float money) {
		// TODO Auto-generated method stub
		UserMapper.updateMoney(userId,money);
	}
	@Override
	public void insertUser(User user) {
		UserMapper.insertSelective(user);
		
	}
	@Override
	public void updateUserPassword(String userPassword, String userAccount) {
		// TODO Auto-generated method stub
		UserMapper.updateUserPassword(userPassword, userAccount);
	}

}
