<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" href="${ context_path}/personalInfo/css/input.css">
<link rel="stylesheet" href="${ context_path}/personalInfo/css/demo.css">
<link rel="stylesheet" href="${ context_path}/personalInfo/css/jquery.slider.css" />
<script type="text/javascript" src="${ context_path}/personalInfo/js/jquery.min.js"></script>
<script type="text/javascript" src="${ context_path}/personalInfo/js/jquery.slider.min.js"></script>
<script src="${ context_path}/personalInfo/jquery/jquery-1.9.1.min.js"></script>
<script src="${ context_path}/personalInfo/jquery/jquery-1.8.2.min.js"></script>
<script src="${ context_path}/cityselect/cityselect.js"></script>
<link rel="stylesheet" href="${ context_path}/personalInfo/css/reveal.css">	
<!--主要样式-->
<script src="${ context_path}/personalInfo/js/jquery-1.6.2.js"></script>
<script type="text/javascript" src="${ context_path}/personalInfo/js/jquery.reveal2.js"></script>
<link href="${ context_path}/cityselect/cityLayout.css" type="text/css" rel="stylesheet">
<script src="${ context_path}/personalInfo/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ context_path}/personalInfo/js/jquery-validate.js" type="text/javascript"></script>
<script src="${ context_path}/personalInfo/js/yulan.js"></script>

<script>

$(function(){
	init_city_select($("#adminAddress, #sel2"));
});

</script>
<style>
<style>
.clearfix:after {
    clear: both;
}
.clearfix:before, .clearfix:after {
    content: " ";
    display: table;
}
 .alieditContainer{
 margin-left:50px;
        position: relative;
    } 
    
.sixDigitPassword {
    position: absolute;
    left: -122px;
    top: 0;   
    width: 1000px;
    height: 26px;  
    color: #fff;
    font-size: 12px;
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
    -webkit-user-select: initial;
    outline: 'none';
    z-index: 999;
    opacity:0;
    filter:alpha(opacity=0);
  }
a :hover{
    text-decoration: none;
    color: #666;
}
  .sixDigitPassword-box {
      
        cursor:text;
        background: #fff;
        outline: none;
        position: relative;
        padding: 8px 0;
        height: 15px;
        border: 1px solid #cccccc;
        border-radius: 2px;
  }
  .sixDigitPassword-box i {
        float: left;
        display: block;
        padding: 4px 0;
        height: 7px;
        border-left: 1px solid #cccccc;
    }
   .sixDigitPassword-box .active {
        background: url('../image/register/password-blink.gif') no-repeat center center;        
    }
   .sixDigitPassword-box b {
        display: block;
        margin: 0 auto;
        width: 7px;
        height: 7px;
        overflow: hidden;
        visibility:hidden;
        background: url('../image/register/passeord-dot.png') no-repeat;
    }
  .sixDigitPassword-box span {
        position: absolute;
        display: block;
        left: 0px;
        top: 0px;
        height: 30px;
        border: 1px solid rgba(82, 168, 236, .8);
        border: 1px solid #00ffff\9;
        border-radius: 2px;
        visibility: hidden;
        -webkit-box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 0.75), 0 0 8px rgba(82, 168, 236, 0.6);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
    }
    .ui-securitycore  .ui-form-item .ui-form-explain{
		margin-top: 8px; 
	}
  .i-block{
	display:inline-block;
  }
 .six-password{
    position: relative;
    height:33px;
    width:182px;
    overflow: hidden;
    vertical-align: middle;
    
}
</style>
<style type="">
.out_line{
 width: 80px;
	   height:40px;
        line-height: 30px;
        color: #456;
        text-align: center;
        border: none;
        display: block;
        font-size: 14px;
}
.out_line:hover{
	color: red;
	text-decoration: underline;
}
.col_2 > ul > li:hover ul {
        display: block;
        
    }
    .col_2 > ul > li > ul {
     position: absolute;
        display: none;
    }
.col_2 > ul > li > ul > li{
	list-style: none;
}
.user>ul>li{
background: transparent;
}
#quantity{
width: 30px;}
</style>
</style>
</head>
<title>我的信息</title>
<body>
  


<div class="sign">

	<div class="sign_01">
	
		<div class="sign_02"><br><a href="${ context_path}/index"><svg style="width:15px;height:15px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
<g><path d="M397.5,500L782,116.2c7.5-7.5,6-21.1-3.3-30.4L711,18.1c-9.4-9.3-23-10.8-30.5-3.3L217.9,476.5c-5.8,5.8-6.1,15.2-1.7,23.5c-4.4,8.3-4.1,17.7,1.7,23.5l462.5,461.7c7.5,7.5,21.2,6,30.5-3.3l67.7-67.6c9.4-9.3,10.9-23,3.3-30.4L397.5,500z"/></g>
</svg>首页</a>
		<div class="mess_1">
			<img class="touxiang" src="${admin.adminPhoto}"/>
		</div>
		<a data-reveal-id="555"  style="margin-left:240px;">更改头像</a>
		<div id="555" class="reveal-modal">

								<h4>上传图片
								</h4>
								<br>
							<a class="close-reveal-modal">&#215;</a>						
							<form method="post" action="${ context_path}/admin/modifiImg" enctype="multipart/form-data">
								<a href="javascript:void(0)" title="选择图片">
									<div class="pic2">
										<input class="pic" accept="image/*"  type="file" name="Photo" id="Photo" onchange="PreviewImage(this,'imgHeadPhoto','divPreview');" />
									</div>
								</a>
								<br><input name="adminId" id="adminId" value="${admin.adminId}" type="hidden" />
								<div>
									<img id="imgHeadPhoto" src="${admin.adminPhoto}" style="width: 50px; height: 50px; border: solid 1px #d2e2e2;" alt="" />
								</div>
								<br>
								<div style="position: absolute;right: 45%;">
									<input type="submit" value="提交" class="btn">
								</div>
							</form>
							
				</div>		
		<div class="mess_2">
			<span class="mess_3">余额：￥${admin.adminMoney }</span>
			<span style="margin-left: 20px;" class="mess_3"><a href="../admin/sel_order.action">查询订单</a></span>
		</div>
		
			<p>请填写您需要修改的信息：</p>
			<form action="${ context_path}/admin/modifiInfo" method="post">
				<div style="color: red;margin-left: 150px;">${mess }</div>
					<input value="${admin.adminNickname}" placeholder="  请输入用户名" name="adminNickname" id="adminNickname" class="input_1" type="text" required="required">
					<input value="${admin.adminEmail}" placeholder="  请输入邮箱" name="adminEmail" id="adminEmail" class="input_1" type="text" required="required">
					<input value="${admin.adminPassword}" name="adminPassword" type="hidden">
					<input value="${admin.adminId}" name="adminId" type="hidden">
					<input value="${admin.adminPhone}" name="adminPhone" type="text" placeholder="  请输入手机号" class="input_1" required="required">
					<input value="${admin.adminMoney}" name="adminMoney" type="hidden">
					
					<input value="${admin.adminAddress}" name="adminAddress"  id="adminAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
					<li class="return_reques">
								<input value="${admin.adminQuestion}" type="text" placeholder="请选择您的密保问题" name="adminQuestion" class="local select_style provin_select">
								<div class="clearfix pa">
									<div class="bomb_con_style provin_con none">
									   <dl>
										  <dd>你高中班主任的名字？</dd>
										  <dd>你初中班主任的名字？</dd>
										  <dd>你母亲的名字？</dd>
										  <dd>你父亲的名字？</dd>
										  <dd>你的生日？</dd>
										
									   </dl>
									</div>
								</div>
					</li>
					
					<input value="${admin.adminAnswer}" name="adminAnswer" placeholder="  请输入密保答案" id="t_email" class="input_1" type="text" required="required">

				
			<div style="width:200px;margin:20px auto;">	
			<input type="submit" value="立即修改" onclick="aa()" class="submit_10">
			<div>
		</div>
		</form>
	</div>
</div>		

<script type="text/javascript">
	var send=document.getElementById("send");
	send.onclick=function(){
		var file=document.getElementById("file").value;
		if(file.length<1){
		alert('请选择图片');
		return false;
		}
	}
	
	
        //js本地图片预览，兼容ie[6-9]、火狐、Chrome17+、Opera11+、Maxthon3
        function PreviewImage(fileObj, imgPreviewId, divPreviewId) {
            var allowExtention = ".jpg,.bmp,.gif,.png"; //允许上传文件的后缀名document.getElementById("hfAllowPicSuffix").value;
            var extention = fileObj.value.substring(fileObj.value.lastIndexOf(".") + 1).toLowerCase();
            var browserVersion = window.navigator.userAgent.toUpperCase();
           
			
			if (allowExtention.indexOf(extention) > -1) {
                if (fileObj.files) {//HTML5实现预览，兼容chrome、火狐7+等
				
                    if (window.FileReader) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            document.getElementById(imgPreviewId).setAttribute("src", e.target.result);
                        }
                        reader.readAsDataURL(fileObj.files[0]);
                    } else if (browserVersion.indexOf("SAFARI") > -1) {
                        alert("不支持Safari6.0以下浏览器的图片预览!");
                    }
                } else if (browserVersion.indexOf("MSIE") > -1) {
                    if (browserVersion.indexOf("MSIE 6") > -1) {//ie6
                        document.getElementById(imgPreviewId).setAttribute("src", fileObj.value);
                    } else {//ie[7-9]
                        fileObj.select();
                        if (browserVersion.indexOf("MSIE 9") > -1)
                            fileObj.blur(); //不加上document.selection.createRange().text在ie9会拒绝访问
                        var newPreview = document.getElementById(divPreviewId + "New");
                        if (newPreview == null) {
                            newPreview = document.createElement("div");
                            newPreview.setAttribute("id", divPreviewId + "New");
                            newPreview.style.width = document.getElementById(imgPreviewId).width + "px";
                            newPreview.style.height = document.getElementById(imgPreviewId).height + "px";
                            newPreview.style.border = "solid 1px #d2e2e2";
                        }
                        newPreview.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src='" + document.selection.createRange().text + "')";
                        var tempDivPreview = document.getElementById(divPreviewId);
                        tempDivPreview.parentNode.insertBefore(newPreview, tempDivPreview);
                        tempDivPreview.style.display = "none";
                    }
                } else if (browserVersion.indexOf("FIREFOX") > -1) {//firefox
                    var firefoxVersion = parseFloat(browserVersion.toLowerCase().match(/firefox\/([\d.]+)/)[1]);
                    if (firefoxVersion < 7) {//firefox7以下版本
                        document.getElementById(imgPreviewId).setAttribute("src", fileObj.files[0].getAsDataURL());
                    } else {//firefox7.0+                    
                        document.getElementById(imgPreviewId).setAttribute("src", window.URL.createObjectURL(fileObj.files[0]));
                    }
                } else {
                    document.getElementById(imgPreviewId).setAttribute("src", fileObj.value);
                }
            } else {
                alert("仅支持" + allowExtention + "为后缀名的文件!");
                fileObj.value = ""; //清空选中文件
                if (browserVersion.indexOf("MSIE") > -1) {
                    fileObj.select();
                    document.selection.clear();
                }
                fileObj.outerHTML = fileObj.outerHTML;
            }
            return fileObj.value;    //返回路径
        }
	
    </script>
</body>
</html>