package com.tourism.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Like;
import com.tourism.pojo.User;
import com.tourism.service.AttractionService;
import com.tourism.service.likeService;

@Controller
@RequestMapping("/like")
public class likeController {
@Autowired
likeService likeService;
@Autowired
AttractionService AttractionService;


/**
 * 收藏
 * @param userId
 * @param attId
 * @param request
 * @param response
 * @return 
 * @return
 */
@RequestMapping("/like.action")
public String Addlike(HttpServletRequest request,Integer tinfo_id) throws Exception{
	int a=0;
	String url =request.getHeader("Referer");
	User user=(User)request.getSession().getAttribute("user");
	int tid = user.getUserId();
	List<Like> list = likeService.selectUser(tid);
	for(Like id:list) System.out.println("list:"+id.getAttId());

	//判断是否已被收藏
	for(int i = 0 ; i < list.size() ; i++) {
		if(tinfo_id==list.get(i).getAttId()) {
			a=1;
		}
	}
	System.out.println("判断条件："+a);
	if(a==1) {
		request.setAttribute("url", url);
		System.out.println(url);
		return "like/Addlikefail";
	}
	else {
		request.setAttribute("url", url);
		likeService.addLike(tid, tinfo_id);
		return "like/addsuccess";
	}
}

/**
 * 展示收藏
 * @param userId
 * @param model
 * @param request
 * @param response
 * @return
 */
@RequestMapping("showLike")
public String showLike(@RequestParam(value = "page", defaultValue = "1") Integer page ,
		@RequestParam(value = "limit", defaultValue = "4") Integer limit,Model model,HttpServletRequest request)
{
	User user = (User) request.getSession().getAttribute("user");

	if(user!=null) 
	{
		List<Like> likes=likeService.selectUser(user.getUserId());
		List<Attraction> attractions=new ArrayList<>();
		for(Like like:likes)
		{
			attractions.add(AttractionService.selectByAttId(like.getAttId()));
		}
		PageHelper.startPage(page, limit);
		PageInfo<Attraction> pageInfo = new PageInfo<Attraction>(attractions,5);
	    model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("attractions", attractions);
		return "like/showLike";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 删除收藏
 * @param collId
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteLike")
public String deleteLike(int attId,HttpServletRequest request,HttpServletResponse response)
{
	User user = (User) request.getSession().getAttribute("user");

	if(user!=null) 
	{
		likeService.deletetAttId(attId);
		return "like/showLike";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

	
}
