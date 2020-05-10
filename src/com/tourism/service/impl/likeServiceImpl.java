package com.tourism.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.mapper.LikeMapper;
import com.tourism.pojo.Like;
import com.tourism.service.likeService;

@Service
public class likeServiceImpl implements likeService{

	@Autowired
	LikeMapper LikeMapper;
	@Override
	public void addLike(int userId, int attId) {
		// TODO Auto-generated method stub
		LikeMapper.addLike(userId, attId);
	}

	@Override
	public void deleteLike(int collId) {
		// TODO Auto-generated method stub
		LikeMapper.deleteByPrimaryKey(collId);
	}

	@Override
	public List<Like> selectUser(int userId) {
		// TODO Auto-generated method stub
		return LikeMapper.selectUser(userId);
	}

	@Override
	public List selectAttId(int attId) {
		// TODO Auto-generated method stub
		return LikeMapper.selectAttId(attId);
	}

	@Override
	public List selectUserId(int userId) {
		// TODO Auto-generated method stub
		return LikeMapper.selectUserId(userId);
	}

	@Override
	public void deletetAttId(int attId) {
		// TODO Auto-generated method stub
		LikeMapper.deletetAttId(attId);
	}

}
