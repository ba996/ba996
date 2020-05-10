package com.tourism.handler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tourism.pojo.Admin;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Detail;
import com.tourism.pojo.Img;
import com.tourism.pojo.Line;
import com.tourism.service.AttractionService;

@Controller
@RequestMapping("/attraction")
/**
 * 
 * @author 巴勉
 * @time 2019/1/25
 *
 */
public class AttractionController {

@Autowired
AttractionService attractionService;



/**
 * 进入添加景点页面
 */
@RequestMapping("toaddAtt")
public String toaddAtt(HttpServletRequest request) throws IOException {
	Admin admin=(Admin) request.getSession().getAttribute("admin");
	if(admin!=null)
	{
		return "admin/addAtt";
	}
	return "login";
}
/**
 * 添加景点
 * @param adminId
 * @param attraction
 * @param request
 * @param response
 * @return
 * @throws IOException 
 * @throws IllegalStateException 
 */
@RequestMapping("addAtt")
public String addAtt(Integer adminId,String attName,Float attPrice,String attGrade,
		String attAddress,String attIntroduce,@RequestParam(value="Photo",required=false)MultipartFile  Photo,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException
{
	
	Admin admin = (Admin) request.getSession().getAttribute("admin");
	Attraction attraction=new Attraction();
	float attgrade=Float.parseFloat(attGrade);
	if(admin!=null) 
	{String originalFilename=null;
	//原始名称
	if(Photo.getOriginalFilename()!=null)
	{originalFilename = Photo.getOriginalFilename();
	System.out.println(originalFilename);
	}
	//上传图片
	if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
		
		//存储图片的物理路径
		String pic_path = request.getSession().getServletContext().getRealPath("resources/user/");	
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
		attraction.setAttPhoto(request.getContextPath() + "/resources/Att/" + newFileName);
		request.getSession().setAttribute("Photo", attraction.getAttPhoto());
		
	}
		attraction.setAdminId(adminId);
		attraction.setAttAddress(attAddress);
		attraction.setAttGrade(attgrade);
		attraction.setAttIntroduce(attIntroduce);
		attraction.setAttName(attName);
		attraction.setAttPrice(attPrice);
		System.out.println(attName);
		attractionService.addAttraction(attraction);
		return "admin/attManagement";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}


/**
 * 添加景区风景照片
 * @param img
 * @param Photo
 * @param request
 * @param response
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("addImg")
public String addImg(Img img,@RequestParam(value="Photo",required=false)MultipartFile  Photo,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException
{
	
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{String originalFilename=null;
	//原始名称
	if(Photo.getOriginalFilename()!=null)
	{originalFilename = Photo.getOriginalFilename();
	System.out.println(originalFilename);
	}
	//上传图片
	if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
		
		//存储图片的物理路径
		String pic_path = request.getSession().getServletContext().getRealPath("resources/user/");	
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
		img.setImg(request.getContextPath() + "/resources/Att/Img/" + newFileName);
		request.getSession().setAttribute("Photo", img.getImg());
		
	}
		attractionService.addImg(img);
		List<Img> imgs=attractionService.selectByAtt(img.getAttId());
		request.setAttribute("imgs",imgs);

		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
	
	
}
/**
 * 添加路线
 * @param attId
 * @param line
 * @param request
 * @param response
 * @return
 */
@RequestMapping("addline")
public String addLine(Line line,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.addLine(line);
		
		
		List<Line> lines=attractionService.selectAll(line.getAttId());
		List<Detail> details=new ArrayList<>();
		for(Line l:lines)details.add(attractionService.selectBylineId(l.getLineId()));
		request.setAttribute("lines", lines);
		request.setAttribute("details", details);
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 路线详细信息
 * @param detail
 * @param request
 * @param response
 * @return
 */
@RequestMapping("adddetail")
public String addDetail(Detail detail,Integer attId,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.addDetail(detail);
		
		List<Line> lines=attractionService.selectAll(attId);
		List<Detail> details=new ArrayList<>();
		for(Line line:lines)details.add(attractionService.selectBylineId(line.getLineId()));
		request.setAttribute("lines", lines);
		request.setAttribute("details", details);
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

//删除


/**
 * 删除景点
 * @param attId
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteAtt")
public String deleteAtt(int attId,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.deleteAttraction(attId);
		return "admin/attManagement";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 删除线路
 * @param lineId
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteLine")
public String deleteLine(int lineId,Integer attId,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.deleteLine(lineId);
		List<Line> lines=attractionService.selectAll(attId);
		List<Detail> details=new ArrayList<>();
		for(Line line:lines)details.add(attractionService.selectBylineId(line.getLineId())); 
		request.setAttribute("lines", lines);
		request.setAttribute("details", details);
		
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 删除景点照片
 * @param imgId
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteImg")
public String deleteImg(int imgId,Integer attId,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.deleteImg(imgId);
		List<Img> imgs=attractionService.selectByAtt(attId);
		request.setAttribute("imgs",imgs);
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}


//更新



/**
 * 进入更新景点页面
 */
@RequestMapping("toUpdateAtt")
public String toUpdateAtt(HttpServletRequest request,Integer attId) throws IOException {
	Admin admin=(Admin) request.getSession().getAttribute("admin");
	if(admin!=null)
	{
		Attraction attraction=attractionService.selectByAttId(attId);
		List<Img> imgs=attractionService.selectByAtt(attId);
		List<Line> lines=attractionService.selectAll(attId);
		List<Detail> details=new ArrayList<>();
		for(Line line:lines)details.add(attractionService.selectBylineId(line.getLineId()));
		request.setAttribute("att",attraction);
		request.setAttribute("imgs",imgs);
		request.setAttribute("lines", lines);
		request.setAttribute("details", details);
		return "admin/updateAtt";
	}
	return "login";
}
/**
 * 更新景点信息
 * @param attraction
 * @param Photo
 * @param request
 * @param response
 * @return
 * @throws IllegalStateException
 * @throws IOException
 */
@RequestMapping("modifiAtt")
public String modifiAtt(Attraction attraction,@RequestParam(value="Photo",required=false)MultipartFile  Photo,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException
{
	
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{String originalFilename=null;
	//原始名称
	if(Photo.getOriginalFilename()!=null)
	{originalFilename = Photo.getOriginalFilename();
	System.out.println(originalFilename);
	}
	//上传图片
	if(Photo!=null && originalFilename!= null && originalFilename.length()>0){
		
		//存储图片的物理路径
		String pic_path = request.getSession().getServletContext().getRealPath("resources/user/");	
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
		attraction.setAttPhoto(request.getContextPath() + "/resources/Att/" + newFileName);
		request.getSession().setAttribute("Photo", attraction.getAttPhoto());
		
	}
		attractionService.updateAttraction(attraction);
		Attraction Attraction=attractionService.selectByAttId(attraction.getAttId());
		request.setAttribute("att",Attraction);
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}


/**
 * 更新线路信息
 * @param line
 * @param request
 * @param response
 * @return
 */
@RequestMapping("modifyline")
public String modifyLine(Line line,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.updateLine(line);
	
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

/**
 * 删除线路详细信息
 * @param detail
 * @param request
 * @param response
 * @return
 */
@RequestMapping("deleteDetail")
public String deleteDetail(Integer lineId ,Integer attId,HttpServletRequest request,HttpServletResponse response)
{
	Admin admin = (Admin) request.getSession().getAttribute("admin");

	if(admin!=null) 
	{
		attractionService.deleteDetail(lineId);
		List<Line> lines=attractionService.selectAll(attId);
		List<Detail> details=new ArrayList<>();
		for(Line line:lines)details.add(attractionService.selectBylineId(line.getLineId()));
		request.setAttribute("lines", lines);
		request.setAttribute("details", details);
		return "attraction/updateAtt";
	}else {
		request.setAttribute("msg", "请先登录");
		return "login";
	}
}

}
