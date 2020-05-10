package com.tourism.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.pojo.Admin;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Count;
import com.tourism.pojo.Detail;
import com.tourism.pojo.Evaluation;
import com.tourism.pojo.Img;
import com.tourism.pojo.Line;
import com.tourism.service.AttractionService;
import com.tourism.service.EvaluationService;
import com.tourism.service.OrderService;
import com.tourism.util.VerifyCode;

@Controller
public class ReceptionController {
@Autowired
AttractionService attractionService;
@Autowired
EvaluationService evaluationService;
@Autowired
OrderService OrderService;
@Autowired
VerifyCode verifyCode;
/**
 * 得到并返回验证码
 */

@RequestMapping("getVerifyCode")
public void getVerifyCode(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
	response.setContentType("image/jpg");
	ImageIO.write(verifyCode.getImage(), "jpg", response.getOutputStream());
	HttpSession session = request.getSession(false);
	session.setAttribute("VerifyCode",verifyCode.getText());	
}

/**
 * 主页面
 * @param request
 * @param model
 * @return
 */
@RequestMapping("index")
public String index(@RequestParam(value = "page", defaultValue = "1") Integer page ,
		@RequestParam(value = "limit", defaultValue = "5") Integer limit,HttpServletRequest request,Model model)
{
	System.out.println(1);
	List<Attraction> attractions=attractionService.selectAll();
	List<Evaluation> evaluations=evaluationService.selectAll();
	int evaSize=evaluations.size();
	request.setAttribute("evaSize", "evaSize");
	if(evaSize<=0)
	{
		request.setAttribute("msg", "暂无评论");
	}
	
		
	//根据评分排序
	java.util.Collections.sort(attractions,new Comparator<Attraction>() {
		@Override
		public int compare(Attraction o1, Attraction o2) {
			int i=(int) (o1.getAttGrade()-o2.getAttGrade());
			return i;
		}

	});
	PageHelper.startPage(page, limit);
	PageInfo<Attraction> pageInfo = new PageInfo<Attraction>(attractions,5);
    model.addAttribute("pageInfo",pageInfo);
	model.addAttribute("attractions",attractions);
	model.addAttribute("evaluations",evaluations);
	return "index";
}

/**
 * 景区详细信息
 * @param attId
 * @param model
 * @return
 */
@RequestMapping("showInfo")
public String showAttInfo(@RequestParam(value = "page", defaultValue = "1") Integer page ,
		@RequestParam(value = "limit", defaultValue = "5") Integer limit,int attId,Model model,HttpServletRequest request)
{
	Attraction attraction=attractionService.selectByAttId(attId);
	List<Line> lines=attractionService.selectAll(attId);
	List<Detail> details=new ArrayList<>();
	for(Line line:lines)details.add(attractionService.selectBylineId(line.getLineId()));
	List<Img> imgs=attractionService.selectByAtt(attId);
	List<Evaluation> evaluations=evaluationService.selectByAttId(attId);
	model.addAttribute("attraction",attraction);
	model.addAttribute("lines",lines);
	model.addAttribute("details",details);
	model.addAttribute("evaluations",evaluations);
	model.addAttribute("imgs",imgs);
	PageHelper.startPage(page, limit);
	PageInfo<Evaluation> pageInfo = new PageInfo<Evaluation>(evaluations,5);
    model.addAttribute("pageInfo",pageInfo);
	return "detailAtt";
}



/**
 * 景区概览
 * @param attId
 * @param model
 * @return
 */
@RequestMapping("showAtt")
public String showAtt(@RequestParam(value = "page", defaultValue = "1") Integer page ,
		@RequestParam(value = "limit", defaultValue = "2") Integer limit,Byte isOrder,Model model,HttpServletRequest request)
{
	List<Attraction> attractions=attractionService.selectAll();
	List<Count> counts=new ArrayList<>();
	for(Attraction a:attractions)
	{
		Count count=new Count();
		count.setAttId(a.getAttId());
		count.setCount(OrderService.selectIsOrder2(a.getAttId(), isOrder).size());
		counts.add(count);
	}
	for(Count c:counts)System.out.println(c.getAttId()+"+"+c.getCount());
	model.addAttribute("attractions",attractions);
	model.addAttribute("counts",counts);
	PageHelper.startPage(page, limit); 
	PageInfo<Attraction> pageInfo = new PageInfo<Attraction>(attractions,5);
	 Admin admin=(Admin) request.getSession().getAttribute("admin");
	    if(admin!=null)return "admin/attManagement";
	return "showAttraction";
}



/**
 * 进入用户登录页面
 * @return
 */
@RequestMapping("tologin")
public String tologin() {
	System.out.println(1);
	return "login";
}




@RequestMapping("test")
public String test() {
	System.out.println(1);
	return "order/order";
}


/**
 * 退出登录
 */
@RequestMapping("quit")
public void quit(HttpSession session , HttpServletResponse response) throws IOException {
	session.invalidate();
	response.sendRedirect("index");
}



/**
 * 记住密码添加cookie
 * @param Name
 * @param Password
 * @param response
 * @param request
 * @throws UnsupportedEncodingException
 */
private void addCookie(String Name, String Password,HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {  
    if(StringUtils.isNotBlank(Name)&&StringUtils.isNotBlank(Password)){  
        //创建Cookie  
        Cookie nameCookie=new Cookie("Name",URLEncoder.encode(Name,"utf-8"));  
        Cookie pswCookie=new Cookie("Password",Password);  
          
        //设置Cookie的父路径  
        nameCookie.setPath(request.getContextPath()+"/");  
        pswCookie.setPath(request.getContextPath()+"/");  
          
        //获取是否保存Cookie  
        String rememberMe=request.getParameter("rememberMe");  
        if(rememberMe==null){//不保存Cookie  
            nameCookie.setMaxAge(0);  
            pswCookie.setMaxAge(0);  
        }else{//保存Cookie的时间长度，单位为秒  
            nameCookie.setMaxAge(10*24*60*60);  
            pswCookie.setMaxAge(10*24*60*60);  
        }  
        //加入Cookie到响应头  
        response.addCookie(nameCookie);  
        response.addCookie(pswCookie);  
    }  
} 


}



