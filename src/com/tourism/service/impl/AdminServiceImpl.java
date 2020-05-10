package com.tourism.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.mapper.AdminMapper;
import com.tourism.pojo.Admin;
import com.tourism.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
@Autowired
AdminMapper AdminMapper;
	@Override
	public Admin findById(int adminId) {
		// TODO Auto-generated method stub
		return AdminMapper.selectByPrimaryKey(adminId);
	}

	@Override
	public Admin findByAccount(String adminAccount) {
		// TODO Auto-generated method stub
		return AdminMapper.findByAccount(adminAccount);
	}

	@Override
	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		AdminMapper.updateByPrimaryKeySelective(admin);
	}

	@Override
	public float getByMoney(int adminID) {
		// TODO Auto-generated method stub
		return AdminMapper.getByMoney(adminID);
	}

	@Override
	public void updateMoney(int adminId, float money) {
		// TODO Auto-generated method stub
		AdminMapper.updateMoney(adminId, money);
	}

	@Override
	public void insertAdmin(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAdminPassword(String adminPassword, String adminAccount) {
		// TODO Auto-generated method stub
		AdminMapper.updateAdminPassword(adminPassword, adminAccount);
	}

}
