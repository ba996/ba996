package com.tourism.handler;



import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tourism.pojo.Messages;
import com.tourism.pojo.User;
import com.tourism.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService UserService;
	/**
	 * 用户登录
	 * @author 巴勉
	 * @time 2019/1/22
	 * @param userAccount
	 * @param userPassword
	 * @param vdcode
	 * @param response
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("login")
	@ResponseBody
	public Messages userLogin(String userAccount,String userPassword,String vdcode, HttpServletResponse response, HttpServletRequest request) throws Exception {
		System.out.println(vdcode);
	
		HttpSession session = request.getSession();
		String Verify= (String) session.getAttribute("VerifyCode");
		
		if(userAccount.equals(null)||userAccount==""||userPassword.equals(null)||userPassword==""){
			System.out.println(1);
			return Messages.fail().put("Message", "请输入用户名和密码！");		
		}else {
			if(vdcode.equalsIgnoreCase(Verify)==false) {
				return Messages.fail().put("Message", "验证码错误");
			}else {
				//根据姓名查找用户
				User user = UserService.findByAccount(userAccount);
				System.out.println(user);
				if(user==null) {
					System.out.println(2);
					return Messages.fail().put("Message", "用户名或密码错误！");
				}else {
					//验证密码
					if(user.getUserPassword().equals(userPassword)) {
						
						session.setAttribute("user", user);
						
						session.setAttribute("userId", user.getUserId());
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
	 * @param userAccount
	 * @return
	 */
	@RequestMapping("checkusername")
	@ResponseBody
	public Messages checkusername(String userAccount) {
		
		if(userAccount==null||userAccount.length()==0) {
			return Messages.fail().put("userAccountMessage", "用户名不可为空！");	
		}
		//通过用户名查找用户
		User user = UserService.findByAccount(userAccount);
		if(user!=null) {
			return Messages.fail().put("userAccountMessage", "用户名不可用，已存在！");	
		}else {
			return Messages.success();
		}
		
	}
	
	

	
	/**
	 * 游客注册
	 * @return
	 */
	@RequestMapping("toUserRegister")
	public String toUserRegister() {
		System.out.println(1);
		return "register/user_registered";
	}
	
	/**
	 * 用户注册
	 * @param userAccount
	 * @param userPassword
	 * @param userPhone
	 * @param userEmali
	 * @param userAddress
	 * @param userQuestion
	 * @param userAnswer
	 * @param userPayWord
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("register")
	@ResponseBody
	public Messages userRegister(String userAccount,String userPassword,String userPhone,String userEmail,
			String userAddress,String userQuestion,String userAnswer,@RequestParam(defaultValue = "0")int userPayword,HttpServletRequest request,HttpServletResponse response ) 
	{
		System.out.println(userAccount+userPassword+userPhone);
		if(userAccount==null||userAccount.equals("")) {
			System.out.println("------------");
			return Messages.fail().put("userAccountMessage", "用户名不能为空");	
		}
		if(userPassword==null||userPassword.equals("")) {
			return Messages.fail().put("userPasswordMessage", "密码不能为空");
		}
		if(userPhone==null||userPhone.equals("")) {
			return Messages.fail().put("userPhoneMessage", "电话号码不能为空");
		}
		if(userEmail==null||userEmail.equals("")) {
			return Messages.fail().put("userEmailMessage", "邮箱不能为空！");
		}
		//再次检验信息
		if(UserService.findByAccount(userAccount)!=null) {
		return Messages.fail().put("userAccountMessage", "用户名不可用，已存在！");
			}
		//属性赋值
		User user=new User();
		
		user.setUserAccount(userAccount);
		user.setUserPassword(userPassword);
		user.setUserPhone(userPhone);
		user.setUserEmail(userEmail);
		user.setUserAddress(userAddress);
		user.setUserQuestion(userQuestion);
		user.setUserAnswer(userAnswer);
		user.setUserPayword(userPayword);
		user.setUserRegtime(new Date());
		System.out.println(user);
		//添加到数据库
		UserService.insertUser(user);
		return Messages.success();		
	}

	/**
	 * 进入个人信息页面
	 * @return
	 * @throws ParseException 
	 */
	@RequestMapping("infromation")
	public String Information(HttpServletRequest request,Model model) throws ParseException {
		User user = (User) request.getSession().getAttribute("user");

		if(user!=null) 
		{
			model.addAttribute("user", user);
			return "personalInfo/user_info";
		}else {
			request.setAttribute("msg", "请先登录");
			
			return "login";
		}
	}
	
	/**
	 * 忘记密码
	 * @param userpassword
	 * @param request
	 * @return
	 */
	@RequestMapping("findPassword")
	public String modifiPassword(String userAccount,String userAnswer,String userPassword,HttpServletRequest request)
	{
			User user=UserService.findByAccount(userAccount);
			if(user!=null)
			{
				request.setAttribute("userQuestion", user.getUserQuestion());
				if(userAnswer.equals(user.getUserAnswer()))
				{
					UserService.updateUserPassword(userPassword, userAccount);
				}else request.setAttribute("userAnswerMsg","回答错误");
			}else request.setAttribute("userAccountMsg","账号不存在");
			request.setAttribute("msg", "修改密码成功！");
			return "findPassword";
	}
	
/*
 * 修改信息
 */


/**
 * 修改头像
 * @param request
 * @param userId
 * @param Photo
 * @param model
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiImg")
public String modifiImg(HttpServletRequest request,Integer userId,@RequestParam(value="Photo",required=false)MultipartFile  Photo,Model model) throws IllegalStateException, IOException
{

	String originalFilename=null;
	User user=UserService.findById(userId);
	//原始名称
	if(Photo.getOriginalFilename()!=null)
	{originalFilename = Photo.getOriginalFilename();
	System.out.println(originalFilename);
	}
	//上传图片
	if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
		
		//存储图片的物理路径
		String pic_path = request.getSession().getServletContext().getRealPath("resources/user/img");	
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
		user.setUserPhoto(request.getContextPath() + "/resources/user/img" + newFileName);
		request.getSession().setAttribute("Photo", user.getUserPhoto());
		
	}
	System.out.println(user);
	UserService.updateUser(user);
	user=UserService.findById(userId);
	model.addAttribute("user", user);
	return "personalInfo/user_info";
	
}

/**
 * 充值
 * @param request
 * @param userId
 * @param userMoney
 * @param model
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiMoney")
public String modifiMoney(HttpServletRequest request,Integer userId,float userMoney,Model model) throws IllegalStateException, IOException
{
	
	User user=UserService.findById(userId);
	float money=user.getUserMoney()+userMoney;
	UserService.updateMoney(userId, money);
	 user=UserService.findById(userId);
	model.addAttribute("user", user);
	return "personalInfo/user_info";
	
}

/**
 * 更新信息
 * @param request
 * @param user
 * @param model
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiInfo")
public String modifiInfo(HttpServletRequest request,Integer userId,User user,Model model,@RequestParam("payPassword_rsainput")Integer userPayword) throws IllegalStateException, IOException
{
	System.out.println(userPayword);
	if(userPayword!=null&&userPayword!=0)
	{user.setUserPayword(userPayword);}
	UserService.updateUser(user);
	user=UserService.findById(userId);
	model.addAttribute("user", user);
	return "personalInfo/user_info";
	
}
}

