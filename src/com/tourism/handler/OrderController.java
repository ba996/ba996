package com.tourism.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.tourism.pojo.Admin;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Order;
import com.tourism.pojo.User;
import com.tourism.service.AttractionService;
import com.tourism.service.OrderService;
import com.tourism.service.UserService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	AttractionService AttractionService;
	/**
	 * 进入添加订单页面
	 * @return
	 */
	@RequestMapping("toaddorder")
	public String addeva(@RequestParam(defaultValue = "0")Integer attId,@RequestParam(defaultValue = "0")Integer orderid,HttpServletRequest request) {
		
		System.out.println(attId);
		Date date=new Date();
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null) {
		if(orderid!=0)
		{
			Order order=orderService.selectOrder(orderid);
			request.setAttribute("order", order);
			Attraction attraction=AttractionService.selectByAttId(attId);
			request.setAttribute("att", attraction);
			int orderId=(order.getOrderId());
			request.setAttribute("orderId", orderId);
			request.setAttribute("date", date);
			return "order/orders";
		}else {
			List<Order> orders=orderService.selectAll();
			int orderId=(orders.size()+1);
			request.setAttribute("orderId", orderId);
			Attraction attraction=AttractionService.selectByAttId(attId);
			request.setAttribute("att", attraction);
			request.setAttribute("date", date);
			return "order/orders";
		}
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
		
	}
	/**
	 * 新增订单
	 * @param order
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@RequestMapping("addorders")
	public String addOrder(Integer orderId,Integer attId,Integer userId,float attPrice,String attName,
			String orderNumber,String orderMoney,Boolean isEva,Boolean isOrder,Boolean isDelete,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(orderNumber+"+"+orderMoney);
		int ordernumber=Integer.parseInt(orderNumber);
		float ordermoney=Float.parseFloat(orderMoney);
		System.out.println(ordernumber+"+"+ordermoney);
		System.out.println(user.getUserMoney());
		Order order=orderService.selectOrder(orderId);
		if(user!=null)
		{
			System.out.println("u");
			if(order!=null)
			{
				System.out.println("o");
				request.setAttribute("order", order);
				return "order/orders";
			}else if(order==null){
				System.out.println(1);
				 if(ordermoney>user.getUserMoney()){
					 System.out.println(2);
					request.setAttribute("msg", "您的余额不足，请充值！");
					return "order/myorder";
				 }else if(ordermoney<=user.getUserMoney()){
					 System.out.println(3);
					Order aOrder=new Order();
					aOrder.setAttId(attId);
					aOrder.setAttName(attName);
					aOrder.setAttPrice(attPrice);
					aOrder.setIsDelete(isDelete);
					aOrder.setIsEvaluation(isEva);
					aOrder.setIsOrder(isOrder);
					aOrder.setOrderId(orderId);
					aOrder.setOrderMoney(ordermoney);
					aOrder.setOrderNumber(ordernumber);
					aOrder.setUserId(userId);
					aOrder.setOrderTime(new Date());
					orderService.addOrder(aOrder);
					aOrder=orderService.selectOrder(orderId);
					System.out.println(aOrder.getOrderMoney()+aOrder.getOrderId());
					request.setAttribute("order", aOrder);
					}
			}
		}else 
			{request.setAttribute("msg", "请先登录");
			return "login";
			}
		return "index";
		
	}
	
	/**
	 * 付款
	 * @param userPayword
	 * @param orderId
	 * @param request
	 * @return
	 */
	@RequestMapping("payMoney")
	public String payMoney(@RequestParam(defaultValue = "0")String payPassword_rsainput,Integer orderId,HttpServletRequest request)
	{
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(orderId);
		Order order=orderService.selectOrder(orderId);
		int userPayword=Integer.parseInt(payPassword_rsainput);
		if(user!=null)
		{
			if(userPayword==user.getUserPayword())
			{
			if(order.getOrderMoney()>user.getUserMoney())
			{
				request.setAttribute("msg", "您的余额不足，请充值！");
				return "order/myorder";
			}else 
				{
				order.setIsOrder(true);
				userService.updateMoney(user.getUserId(), user.getUserMoney()-order.getOrderMoney());
				orderService.update(order);
				return "order/success";
				}
			
			}else 
			{
				request.setAttribute("msg", "密码错误！");
				return "order/orders";
			}
		}else 
			{request.setAttribute("msg", "请先登录");
			return "login";
			}
	}
	
	/**
	 * 
	 * 用户删除订单
	 * @param orderId
	 * @param isDelete
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("userdelete")
	public String userdelete(int orderId,Integer isDelete,HttpServletRequest request,HttpServletResponse response)
	{
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null)
		{
			orderService.updateOrder(orderId, isDelete);
			return "order/del_success";
		}else 
			{request.setAttribute("msg", "请先登录");
			return "login";
			}
		
	}
	
	/**
	 *管理员删除订单
	 * @param orderId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("admindelete")
	public String admindelete(int orderId,HttpServletRequest request,HttpServletResponse response)
	{
		Admin admin =  (Admin) request.getSession().getAttribute("admin");
		if(admin!=null)
		{
			orderService.deleteOrder(orderId);
			return null;
		}else 
			{request.setAttribute("msg", "请先登录");
			return "login";
			}
		
	}
	
	
	/**
	 * 查询用户所有订单
	 * @param userId
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selectUserAll")
	public String selectUserAll(@RequestParam(value = "page", defaultValue = "1") Integer page ,
			@RequestParam(value = "limit", defaultValue = "3") Integer limit,Model model,HttpServletRequest request,HttpServletResponse response)
	{
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null)
		{
			List<Order> dellist=new ArrayList<>();
			List<Order> orders=orderService.selectUserAll(user.getUserId());
			if(orders.size()>0)
			{
			for(Order order:orders)
			{
				if(order.getIsDelete()==true)
					dellist.add(order);
			}
			orders.removeAll(dellist);
			}
			model.addAttribute("orders", orders);
			PageHelper.startPage(page, limit);
			
			PageInfo<Order> pageInfo = new PageInfo<Order>(orders,5);
		    model.addAttribute("pageInfo",pageInfo);
		    if(orders.size()<=0)request.setAttribute("msg", "暂无此类订单信息");
			return "order/myorder";
			
		}else 
			{request.setAttribute("msg", "请先登录");
			return "login";
			}	
		
	}
	
	
	/**
	 * isOrder=0 未完成
	 * isOrder=1 完成
	 * 分类查询订单
	 * @param page
	 * @param limit
	 * @param userId
	 * @param isOrder
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selectFishing")
	public String selectIsOrder(@RequestParam(value = "page", defaultValue = "1") Integer page ,
			@RequestParam(value = "limit", defaultValue = "3") Integer limit,byte isOrder,Model model,HttpServletRequest request,HttpServletResponse response)
	{
		User user = (User) request.getSession().getAttribute("user");
		List<Order> dellist=new ArrayList<>();
		if(user!=null)
		{
		if(isOrder==0)
		{
			List<Order> orders=orderService.selectIsOrder(user.getUserId(), isOrder);
		
			if(orders.size()>0)
			{
			for(Order order:orders)
			{
				if(order.getIsDelete()==true)
					dellist.add(order);		
			}
			orders.removeAll(dellist);
			}
			model.addAttribute("orders", orders);
			PageHelper.startPage(page, limit);
			PageInfo<Order> pageInfo = new PageInfo<Order>(orders,5);
		    model.addAttribute("pageInfo",pageInfo);
		    if(orders.size()<=0)request.setAttribute("msg", "暂无此类订单信息");
			return "order/myorder";
			
		}else 
			{List<Order> orders=orderService.selectIsOrder(user.getUserId(), isOrder);
			if(orders.size()>0)
			{
			for(Order order:orders)
			{
				if(order.getIsDelete()==true)
					dellist.add(order);
			}
			orders.removeAll(dellist);
			}
			model.addAttribute("orders", orders);
			PageHelper.startPage(page, limit);
			PageInfo<Order> pageInfo = new PageInfo<Order>(orders,5);
		    model.addAttribute("pageInfo",pageInfo);
		    if(orders.size()<=0)request.setAttribute("msg", "暂无此类订单信息");
			return "order/myorder";
			}	
		}else 
		{request.setAttribute("msg", "请先登录");
		return "login";
		}	
		
	}
	
	/**
	 * isOrder=0 未完成
	 * isOrder=1 完成
	 * 分类查询订单
	 * @param page
	 * @param limit
	 * @param userId
	 * @param isOrder
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selectIsEva")
	public String selectIsEva(@RequestParam(value = "page", defaultValue = "1") Integer page ,
			@RequestParam(value = "limit", defaultValue = "3") Integer limit,byte isEvaluation,Model model,HttpServletRequest request,HttpServletResponse response)
	{
		User user=(User) request.getSession().getAttribute("user");
		List<Order> dellist=new ArrayList<>();
		if(user!=null)
		{
		if(isEvaluation==0)
		{
			List<Order> orders=orderService.selectIsEva(user.getUserId(), isEvaluation);
			if(orders.size()>0)
			{
			for(Order order:orders)
			{
				if(order.getIsDelete()==true) 
					dellist.add(order);
			}
			orders.removeAll(dellist);
			}
			model.addAttribute("orders", orders);
			PageHelper.startPage(page, limit);
			PageInfo<Order> pageInfo = new PageInfo<Order>(orders,5);
		    model.addAttribute("pageInfo",pageInfo);
		    if(orders.size()<=0)request.setAttribute("msg", "暂无此类订单信息");
			return "order/myorder";
			
		}else 
			{List<Order> orders=orderService.selectIsEva(user.getUserId(), isEvaluation);
			if(orders.size()>0)
			{
			for(Order order:orders)
			{
				if(order.getIsDelete()==true)
					dellist.add(order);
			}
			orders.removeAll(dellist);
			}
			model.addAttribute("orders", orders);
			PageHelper.startPage(page, limit);
			PageInfo<Order> pageInfo = new PageInfo<Order>(orders,5);
		    model.addAttribute("pageInfo",pageInfo);
		    if(orders.size()<=0)request.setAttribute("msg", "暂无此类订单信息");
		    return "order/myorder";
			}	
		}else 
		{request.setAttribute("msg", "请先登录");
		return "login";
		}	
	}
	
	
}
