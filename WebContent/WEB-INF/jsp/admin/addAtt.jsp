<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${ context_path}/css/mess.css" type="text/css"/>
<link rel="stylesheet" href="${ context_path}/personalInfo/css/reveal.css"/>	
<!--主要样式-->
<script src="${ context_path}/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${ context_path}/personalInfo/js/jquery.reveal2.js"></script>
<script src="${ context_path}/js/jquery.min.js"></script>
<script src="${ context_path}/js/jquery-validate.js" type="text/javascript"></script>
<script src="${ context_path}/js/jquery-1.8.3.min.js"></script>
<script src="${ context_path}/cityselect/cityselect.js"></script>
<link href="${ context_path}/cityselect/cityLayout.css" type="text/css" rel="stylesheet"/>
<script>

$(function(){
	init_city_select($("#attAddress,#sel2"));
});

</script>

<title>景点信息</title>
</head>
<body>

<div class="mess_1">
<a class="back" style="" href="${ context_path}/showAtt?isOrder=1"><svg style="width:15px;height:15px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
<g><path d="M397.5,500L782,116.2c7.5-7.5,6-21.1-3.3-30.4L711,18.1c-9.4-9.3-23-10.8-30.5-3.3L217.9,476.5c-5.8,5.8-6.1,15.2-1.7,23.5c-4.4,8.3-4.1,17.7,1.7,23.5l462.5,461.7c7.5,7.5,21.2,6,30.5-3.3l67.7-67.6c9.4-9.3,10.9-23,3.3-30.4L397.5,500z"/></g>
</svg>返回</a>
		<p style=" margin-left:350px; font-size: 28px;">景区信息</p>
	<form action="${ context_path}/attraction/addAtt" method="post" enctype="multipart/form-data">
	 <input type="hidden" id="adminId" name="adminId" value="${admin.adminId}"> <!--用户id-->
		<p>综合评分：</p>
		<input class="mess_2" type="text" id="attGrade" name="attGrade"  value="0.0" readonly="readonly">
		<p>景区名称：</p>
		<input name="attName" id="attName" class="mess_2" type="text" value="">
		<p>景区地址：</p>
		<input name="attAddress" value=""  id="attAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
		<p>景区照片：</p>
		<div class="mess_4"><img class="mess_3" src="" /></div>
		
		<a href="javascript:void(0)"  title="更改图片">
			<div class="pic2" style="margin:0 auto;margin-top:15px;">
				<input class="pic" accept="image/*"  type="file" name="Photo" id="Photo"/>
			</div>
		</a>
		
		<p>景区门票：</p>
		<input style="text-align:center;font-size:16px;" class="mess_2" id="attPrice" name="attPrice" value=""/>
		<p>景区介绍：</p>
		
		<div class="mess_6"><textarea class="mess_5" name="attIntroduce" id="attIntroduce"></textarea></div><br>
		<div class="mess_7"><input type="submit" value="添加景点" class="submit_10"></div>
	</form>
	
</body>
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
</html>