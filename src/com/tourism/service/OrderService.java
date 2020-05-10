package com.tourism.service;

import java.util.Date;
import java.util.List;

import com.tourism.pojo.Order;

public interface OrderService {
	//添加订单
   void addOrder(Order order);
   //删除订单
   void deleteOrder(int orderId);
   //用户删除订单修改属性is_Delete
   void updateOrder(int orderId,int isDelete);
   List<Order> selectUserAll(int userId);
   //根据ID查找订单
   Order selectOrder(int orderId);
   //根据ID查找全部订单
   List<Order> selectAll();
   //根据付款情况查找订单
   List<Order> selectIsOrder(Integer userId,int isOrder);
   	//根据付款情况查找订单
   List<Order> selectIsOrder2(Integer attId,int isOrder);
   //根据评价情况查找订单
   List<Order> selectIsEva(Integer userId,int isEvaluation);  
   //更新订单信息
   void update(Order order);
   Order selectOrderTime(Date orderTime);
   
}
