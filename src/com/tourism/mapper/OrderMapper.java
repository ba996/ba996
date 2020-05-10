package com.tourism.mapper;

import com.tourism.pojo.Order;
import com.tourism.pojo.OrderExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderMapper {
    int countByExample(OrderExample example);

    int deleteByExample(OrderExample example);

    int deleteByPrimaryKey(Integer orderId);

    int insert(Order record);

    int insertSelective(Order record);

    List<Order> selectByExample(OrderExample example);

    Order selectByPrimaryKey(Integer orderId);

    int updateByExampleSelective(@Param("record") Order record, @Param("example") OrderExample example);

    int updateByExample(@Param("record") Order record, @Param("example") OrderExample example);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    /*
     * 自定义方法
     * 
     */
    void updateOrder(@Param("orderId")int orderId,@Param("isDelete")int isDelete);
    List<Order> selectUserAll(int userId);
    List<Order> selectAll();
    List<Order> selectIsOrder(@Param("userId")Integer userId,@Param("isOrder")int isOrder);
    List<Order> selectIsEva(@Param("userId")Integer userId,@Param("isEvaluation")int isEvaluation);
   	//根据付款情况查找订单
   List<Order> selectIsOrder2(@Param("attId")Integer attId,@Param("isOrder")int isOrder);
   Order selectOrderTime(Date orderTime);
}