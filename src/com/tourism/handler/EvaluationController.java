package com.tourism.handler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Evaluation;
import com.tourism.pojo.Order;
import com.tourism.pojo.User;
import com.tourism.service.AttractionService;
import com.tourism.service.EvaluationService;
import com.tourism.service.OrderService;

@Controller
@RequestMapping("/eva")
public class EvaluationController {
@Autowired
EvaluationService evaluationService;
@Autowired
AttractionService AttractionService;
@Autowired
OrderService OrderService;





/**
 * 进入添加评论页面
 * @return
 */
@RequestMapping("toaddeva")
public String addeva(Integer userId,Integer attId,Integer orderId,HttpServletRequest request) {
	System.out.println(userId+"+"+attId+"+"+orderId);
	request.setAttribute("userId", userId);
	request.setAttribute("attId", attId);
	request.setAttribute("orderId", orderId);
	return "evaluation/addeva";
}
/**
 * 添加评论
 * @param evaluation
 * @param request
 * @param response
 * @return
 * @throws IOException 
 * @throws IllegalStateException 
 */
@RequestMapping("addEva")
public String addEva(Evaluation evaluation,Integer orderId,@RequestParam(value="Photo",required=false)MultipartFile  Photo,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException
{
	User user = (User) request.getSession().getAttribute("user");
	System.out.println(evaluation.getAttId());

	if(user!=null) 
	{
		String originalFilename=null;
		//原始名称
		if(Photo.getOriginalFilename()!=null)
		{originalFilename = Photo.getOriginalFilename();
		System.out.println(originalFilename);
		}
		//上传图片
		if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
			
			//存储图片的物理路径
			String pic_path = request.getSession().getServletContext().getRealPath("resources/eva/");	
			System.out.println(pic_path);
			//新的图片名称
			String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
			System.out.println(newFileName);
			//新图片
			File newFile = new File(pic_path+newFileName);
			System.out.println(newFile);
			//将内存中的数据写入磁盘
			Photo.transferTo(newFile);
			//将新图片名称写到user中
			evaluation.setEvaPhoto(request.getContextPath() + "/resources/eva/" + newFileName);
			
		}
		evaluation.setEvaTime(new Date());
		evaluationService.addEva(evaluation);
		float total=0,average=0;
		
		
		/*
		 * 计算每每个景点的平均分
		 */
		List<Evaluation> evaluations=evaluationService.selectByAttId(evaluation.getAttId());
		if(evaluations.size()>0)
		{
		for(Evaluation e:evaluations)
		{
			System.out.println(e.getEvaGrade());
			total=total+e.getEvaGrade();
		}
		average=total/evaluations.size();
		}else average=evaluation.getEvaGrade();
		System.out.println(total);
		System.out.println(average);
		AttractionService.updateGrade(evaluation.getAttId(), average);
		/**
		 * 更新订单信息
		 * 评论修改
		 */
		Order order=OrderService.selectOrder(orderId);
		order.setIsEvaluation(true);
		OrderService.update(order);
	
		return "eva/showUserEva";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}


/**
 * 删除评论
 * @param evaId
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteEva")
public String deleteEva(int evaId,HttpServletRequest request,HttpServletResponse response)
{
	User user = (User) request.getSession().getAttribute("user");

	if(user!=null) 
	{
		evaluationService.deleteEva(evaId);
		return "evaluation/del_success";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 显示当前用户评论
 * @param userId
 * @param model
 * @param request
 * @param response
 * @return
 */
@RequestMapping("showUserEva")
public String showUserEva(@RequestParam(value = "page", defaultValue = "1") Integer page ,
		@RequestParam(value = "limit", defaultValue = "3") Integer limit,Model model,HttpServletRequest request,HttpServletResponse response)
{
	User user = (User) request.getSession().getAttribute("user");

	if(user!=null) 
	{
		List<Evaluation> evaluations=evaluationService.selectByUserId(user.getUserId());
		List<Attraction> attractions=new ArrayList<>();
		for(Evaluation e:evaluations)
		{
			attractions.add( AttractionService.selectByAttId(e.getAttId()));
		}
		model.addAttribute("attractions", attractions);
		model.addAttribute("evaluations", evaluations);
		PageHelper.startPage(page, limit);
		PageInfo<Evaluation> pageInfo = new PageInfo<Evaluation>(evaluations,5);
	    model.addAttribute("pageInfo",pageInfo);
	    if(evaluations.size()<=0)request.setAttribute("msg", "暂无评论");
		return "evaluation/myeva";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

}
