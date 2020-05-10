package com.tourism.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.mapper.OrderMapper;
import com.tourism.pojo.Order;
import com.tourism.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderMapper OrderMapper;
	@Override
	public void addOrder(Order order) {
		// TODO Auto-generated method stub
		OrderMapper.insertSelective(order);
	}

	@Override
	public void deleteOrder(int orderId) {
		// TODO Auto-generated method stub
		OrderMapper.deleteByPrimaryKey(orderId);
	}

	@Override
	public void updateOrder(int orderId,int isDelete) {
		// TODO Auto-generated method stub
		OrderMapper.updateOrder(orderId, isDelete);
	}

	@Override
	public Order selectOrder(int orderId) {
		// TODO Auto-generated method stub
		return OrderMapper.selectByPrimaryKey(orderId);
	}

	@Override
	public List<Order> selectIsOrder(Integer userId, int isOrder) {
		// TODO Auto-generated method stub
		return OrderMapper.selectIsOrder(userId, isOrder);
	}

	@Override
	public List<Order> selectIsEva(Integer userId, int isEvaluation) {
		// TODO Auto-generated method stub
		return OrderMapper.selectIsEva(userId, isEvaluation);
	}

	@Override
	public List<Order> selectAll() {
		// TODO Auto-generated method stub
		return OrderMapper.selectAll();
	}

	@Override
	public List<Order> selectUserAll(int userId) {
		// TODO Auto-generated method stub
		return OrderMapper.selectUserAll(userId);
	}

	@Override
	public void update(Order order) {
		OrderMapper.updateByPrimaryKeySelective(order);
		
	}

	@Override
	public List<Order> selectIsOrder2(Integer attId, int isOrder) {
		// TODO Auto-generated method stub
		return OrderMapper.selectIsOrder2(attId, isOrder);
	}

	@Override
	public Order selectOrderTime(Date orderTime) {
		// TODO Auto-generated method stub
		return OrderMapper.selectOrderTime(orderTime);
	}

}
