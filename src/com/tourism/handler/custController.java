package com.tourism.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tourism.pojo.Admin;
import com.tourism.pojo.User;
import com.tourism.service.AdminService;
import com.tourism.service.UserService;

/**
 * 修改密码
 * @author 巴勉
 *
 */
@Controller
@RequestMapping(value="/cust")
public class custController {
	@Autowired
	UserService UserService;
	@Autowired
	AdminService AdminService;
	
	
	@RequestMapping("/getquestion.action")
	public String query(String user,String t_phone,HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session.setAttribute("t_phone", t_phone);
		if(user.equals("cust")) {
			User users=UserService.findByAccount(t_phone);
			if(users==null) {
				request.setAttribute("user", user);
				return "register/findPassword/nophone";
			}else {
				request.setAttribute("user", user);
				request.setAttribute("question",users.getUserQuestion());
				return "register/findPassword/rec_pass_veriy";
			}
		}else if(user.equals("admin")) {
			Admin admin = AdminService.findByAccount(t_phone);
			if(admin == null) {
				request.setAttribute("user", user);
				return "register/findPassword/nophone";
			}else {
				request.setAttribute("user", user);
				request.setAttribute("question", admin.getAdminQuestion());
				return "register/findPassword/rec_pass_veriy";
			}
		}
		return "register/findPassword/rec_pass_input";
		
	}
	
	/**
	 * 账户校验
	 * @return
	 */
	@RequestMapping("checkAccount")
	public String noAccount(String user,HttpServletRequest request) {
		System.out.println(1);
		request.setAttribute("user", user);
		return "register/findPassword/rec_pass_input";
	}
	
	@RequestMapping("/get_answer.action")
	public String get_answer(String user,String answer,HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		System.out.println(user);
		String t_phone = (String) session.getAttribute("t_phone");
		if(user.equals("cust")) {
			User users=UserService.findByAccount(t_phone);			
			if(answer.equals(users.getUserAnswer())) {
				request.setAttribute("user", user);
				
				return "register/findPassword/rec_pass_rec";
			}else {
				request.setAttribute("user", user);
				request.setAttribute("question",users.getUserAnswer());
				return "register/findPassword/false";
			}
		}else if(user.equals("admin")) {
			Admin admin= AdminService.findByAccount(t_phone);
			if(answer.equals(admin.getAdminAnswer())) {
				request.setAttribute("user", user);
				return "register/findPassword/rec_pass_rec";
			}else {
				request.setAttribute("user", user);
				request.setAttribute("question", admin.getAdminAnswer());
				return "register/findPassword/false";
			
			}
		}
		return "register/findPassword/rec_pass_veriy";
		
	}
	
	
	/**
	 * 密保问题校验
	 * @return
	 */
	@RequestMapping("checkQuestion")
	public String checkQuestion(String user,String question,HttpServletRequest request) {
		System.out.println(1);
		request.setAttribute("user", user);
		request.setAttribute("question", question);
		return "register/findPassword/rec_pass_veriy";
	}

	@RequestMapping("/re_pass.action")
	public String re_pass(String user,String pass,HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		String t_phone = (String) session.getAttribute("t_phone");
		if(user.equals("cust")) {
			UserService.updateUserPassword(pass,t_phone);
			return "register/findPassword/com";
		}else if(user.equals("admin")) {
			AdminService.updateAdminPassword(pass,t_phone);
			return "register/findPassword/com";
		}
		return "register/findPassword/rec_pass_rec";
		
	}

	
	

}
