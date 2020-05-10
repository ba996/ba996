package com.tourism.handler;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tourism.pojo.Admin;
import com.tourism.pojo.Messages;
import com.tourism.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
@Autowired
AdminService AdminService;

/**
 * 用户登录
 * @author 巴勉
 * @time 2019/1/22
 * @param adminAccount
 * @param adminPassword
 * @param vdcode
 * @param response
 * @param request
 * @return
 * @throws Exception
 */
@RequestMapping("login")
@ResponseBody
public Messages adminLogin(String adminAccount,String adminPassword,String vdcode1, HttpServletResponse response, HttpServletRequest request) throws Exception {
	System.out.println(vdcode1+adminAccount+adminPassword);

	HttpSession session = request.getSession();
	String Verify= (String) session.getAttribute("VerifyCode");
	
	if(adminAccount.equals(null)||adminAccount==""||adminPassword.equals(null)||adminPassword==""){
		System.out.println(1);
		return Messages.fail().put("Message", "请输入用户名和密码！");		
	}else {
		if(vdcode1.equalsIgnoreCase(Verify)==false) {
			return Messages.fail().put("Message", "验证码错误");
		}else {
			//根据姓名查找用户
			Admin admin = AdminService.findByAccount(adminAccount);
			System.out.println(admin);
			if(admin==null) {
				System.out.println(2);
				return Messages.fail().put("Message", "用户名或密码错误！");
			}else {
				//验证密码
				if(admin.getAdminPassword().equals(adminPassword)) {
					
					session.setAttribute("admin", admin);
					
					session.setAttribute("adminId", admin.getAdminId());
					return Messages.success().put("Message", "成功");
				}else {
					return Messages.fail().put("Message", "用户名或密码错误！");					
				}
			}				
		}
	}
}

/**
 * 验证登录名的合法性
 * @param adminAccount
 * @return
 */
@RequestMapping("checkadminname")
@ResponseBody
public Messages checkadminname(String adminAccount) {
	
	if(adminAccount==null||adminAccount.length()==0) {
		return Messages.fail().put("adminAccountMessage", "用户名不可为空！");	
	}
	//通过用户名查找用户
	Admin admin = AdminService.findByAccount(adminAccount);
	if(admin!=null) {
		return Messages.fail().put("adminnameMessage", "用户名不可用，已存在！");	
	}else {
		return Messages.success();
	}
	
}

/**
 * 管理员注册
 * @return
 */
@RequestMapping("toAdminRegister")
public String toadminRegister() {
	System.out.println(1);
	return "register/admin_registered";
}

/**
 * 用户注册
 * @param adminAccount
 * @param adminPassword
 * @param adminPhone
 * @param adminEmali
 * @param adminAddress
 * @param adminQuestion
 * @param adminAnswer
 * @param adminPayWord
 * @param request
 * @param response
 * @return
 */
@RequestMapping("register")
@ResponseBody
public Messages adminRegister(String adminAccount,String adminPassword,String adminPhone,String adminEmail,
		String adminAddress,String adminQuestion,String adminAnswer,HttpServletRequest request,HttpServletResponse response ) 
{
	if(adminAccount==null||adminAccount.equals("")) {
		System.out.println("------------");
		return Messages.fail().put("adminAccountMessage", "用户名不能为空");	
	}
	if(adminPassword==null||adminPassword.equals("")) {
		return Messages.fail().put("adminPasswordMessage", "密码不能为空");
	}
	if(adminPhone==null||adminPhone.equals("")) {
		return Messages.fail().put("adminPhoneMessage", "电话号码不能为空");
	}
	if(adminEmail==null||adminEmail.equals("")) {
		return Messages.fail().put("adminEmailMessage", "邮箱不能为空！");
	}
	//再次检验信息
	if(AdminService.findByAccount(adminAccount)!=null) {
	return Messages.fail().put("adminAccountMessage", "用户名不可用，已存在！");
		}
	//属性赋值
	Admin admin=new Admin();
	
	admin.setAdminAccount(adminAccount);
	admin.setAdminPassword(adminPassword);
	admin.setAdminPhone(adminPhone);
	admin.setAdminEmail(adminEmail);
	admin.setAdminAddress(adminAddress);
	admin.setAdminQuestion(adminQuestion);
	admin.setAdminAnswer(adminAnswer);
	admin.setAdminRegtime(new Date());
	
	//添加到数据库
	AdminService.insertAdmin(admin);
	return Messages.success();		
}

/**
 * 进入个人信息页面
 * @return
 * @throws ParseException 
 */
@RequestMapping("infromation")
public String Information(HttpServletRequest request,Model model) throws ParseException {
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		model.addAttribute("admin", admin);
		return "personalInfo/admin_info";
	}else {
		request.setAttribute("msg", "请先登录");
		
		return "login";
	}
}

/**
 * 忘记密码
 * @param adminpassword
 * @param request
 * @return
 */
@RequestMapping("findPassword")
public String modifiPassword(String adminAccount,String adminAnswer,String adminPassword,HttpServletRequest request)
{
		Admin admin=AdminService.findByAccount(adminAccount);
		if(admin!=null)
		{
			request.setAttribute("adminQuestion", admin.getAdminQuestion());
			if(adminAnswer.equals(admin.getAdminAnswer()))
			{
				AdminService.updateAdminPassword(adminPassword, adminAccount);
			}else request.setAttribute("adminAnswerMsg","回答错误");
		}else request.setAttribute("adminAccountMsg","账号不存在");
		request.setAttribute("msg", "修改密码成功！");
		return "findPassword";
}


/*
 * 修改信息
 */


/**
 * 修改头像
 * @param request
 * @param adminId
 * @param Photo
 * @param model
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiImg")
public String modifiImg(HttpServletRequest request,Integer adminId,@RequestParam(value="Photo",required=false)MultipartFile  Photo,Model model) throws IllegalStateException, IOException
{

	String originalFilename=null;
	Admin admin=AdminService.findById(adminId);
	//原始名称
	if(Photo.getOriginalFilename()!=null)
	{originalFilename = Photo.getOriginalFilename();
	System.out.println(originalFilename);
	}
	//上传图片
	if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
		
		//存储图片的物理路径
		String pic_path = request.getSession().getServletContext().getRealPath("resources/admin/img");	
		System.out.println(pic_path);
		//新的图片名称
		String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
		System.out.println(newFileName);
		//新图片
		File newFile = new File(pic_path+newFileName);
		System.out.println(newFile);
		//将内存中的数据写入磁盘
		Photo.transferTo(newFile);
		//将新图片名称写到admin中
		admin.setAdminPhoto(request.getContextPath() + "/resources/admin/img" + newFileName);
		request.getSession().setAttribute("Photo", admin.getAdminPhoto());
		
	}
	System.out.println(admin);
	AdminService.updateAdmin(admin);
	admin=AdminService.findById(adminId);
	model.addAttribute("admin", admin);
	return "personalInfo/admin_info";
	
}


/**
 * 更新信息
 * @param request
 * @param admin
 * @param model
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiInfo")
public String modifiInfo(HttpServletRequest request,Integer adminId,Admin admin,Model model) throws IllegalStateException, IOException
{
	AdminService.updateAdmin(admin);
	admin=AdminService.findById(adminId);
	model.addAttribute("admin", admin);
	return "personalInfo/admin_info";
	
}


}

