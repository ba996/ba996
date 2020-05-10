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
<link rel="stylesheet" href="${ context_path}/personalInfo/css/reveal.css">	
<!--主要样式-->
<script src="${ context_path}/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${ context_path}/personalInfo/js/jquery.reveal2.js"></script>
<script src="${ context_path}/js/jquery.min.js"></script>
<script src="${ context_path}/js/jquery-validate.js" type="text/javascript"></script>
<script src="${ context_path}/js/jquery-1.8.3.min.js"></script>
<script src="${ context_path}/cityselect/cityselect.js"></script>
<link href="${ context_path}/cityselect/cityLayout.css" type="text/css" rel="stylesheet">
<script>

$(function(){
	init_city_select($("#attAddress, #sel2"));
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
	<form action="${ context_path}/attraction/modifiAtt" method="post" enctype="multipart/form-data">
     <input type="hidden" id="adminId" name="adminId" value="${admin.adminId}"> <!--用户id-->
		<p>综合评分：</p>
		<input class="mess_2" type="text" id="attGrade" name="attGrade" value="${att.attGrade}" readonly="readonly">
		<p>景区名称：</p>
		<input name="attName" class="mess_2" type="text" value="${att.attName}">
		<p>景区地址：</p>
		<input name="attAddress" value=""  id="attAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
		<p>景区照片：</p>
		<input type="hidden" name="attId" id="attId" value="${att.attId }"/>
		<div class="mess_4"><img class="mess_3" src="${att.attPhoto}" /></div>
		
		<a href="javascript:void(0)"  title="更改图片">
			<div class="pic2" style="margin:0 auto;margin-top:15px;">
				<input class="pic" accept="image/*"  type="file" name="Photo" id="Photo"/>
			</div>
		</a>
		
		<p>景区门票：</p>
		<input style="text-align:center;font-size:16px;" class="mess_2" id="attPrice" name="attPrice" value="${att.attPrice}">
		<p>景区介绍：</p>
		
		<div class="mess_6"><textarea class="mess_5" name="attIntroduce" id="attIntroduce">${att.attIntroduce }</textarea></div><br>
		<div class="mess_7"><input type="submit" value="立即修改" class="submit_10"></div>
	</form>
	<p>推荐路线：</p>
	<c:forEach items="${lines}" var="line" step="1">
	
			 
	

		<div onload="val()" class="line_2"><a data-reveal-id="${line.lineId }" class="line_1" href="">${line.lineName }</a>
			<a style="float: right;margin-right: 20px;margin-top: 8px;" href="${ context_path}/attraction/deleteLine?lineId=${line.lineId }&attId=${att.attId }" title="删除">
				<svg style="width:15px;height:15px;color:red;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
				<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
				<g><path d="M386.4,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-19.5,6.5-38.9,26-38.9,51.9v402.4C347.5,805,367,824.5,386.4,824.5z"/><path d="M821.3,337.7c-26,0-45.4,19.5-45.4,45.4v480.3c0,26-19.5,38.9-38.9,38.9H256.6c-26,0-38.9-19.5-38.9-38.9V383.2c0-26-19.5-45.4-45.4-45.4c-26,0-38.9,19.5-38.9,45.4v525.7c0,45.4,38.9,77.9,77.9,77.9h571.1c45.4,0,77.9-38.9,77.9-77.9V383.2C860.2,357.2,840.7,337.7,821.3,337.7z"/><path d="M938.1,175.5H775.8V91.1c0-45.4-38.9-77.9-77.9-77.9H295.6c-45.4,0-77.9,38.9-77.9,77.9v84.4H55.4c-26,0-45.4,19.5-45.4,45.4s19.5,45.4,45.4,45.4h889.1c26,0,45.4-19.5,45.4-45.4C983.5,195,964,175.5,938.1,175.5L938.1,175.5z M697.9,175.5H302.1V143c0-26,19.5-38.9,38.9-38.9h311.5c26,0,38.9,19.5,38.9,38.9v32.5H697.9z"/><path d="M607.1,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-26,6.5-45.4,26-45.4,51.9v402.4C561.7,805,581.1,824.5,607.1,824.5L607.1,824.5z"/></g>
				</svg>
			</a>
		</div>
		
		<div class="reveal-modal" id="${l_info.key.l_id }">
			<form action="${ context_path}/attraction/adddetail" method="post">
				
			<c:forEach items="${details }" var="detail" step="1">
				<div class="line_5">${detail.detailLine }<span><a href="${ context_path}/admin/deleteDetail?lineId=${detail.lineId}&attId=${att.attId }" title="删除">
					<svg style="width:10px;height:10px;color:red;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
					<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
					<g><path d="M386.4,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-19.5,6.5-38.9,26-38.9,51.9v402.4C347.5,805,367,824.5,386.4,824.5z"/><path d="M821.3,337.7c-26,0-45.4,19.5-45.4,45.4v480.3c0,26-19.5,38.9-38.9,38.9H256.6c-26,0-38.9-19.5-38.9-38.9V383.2c0-26-19.5-45.4-45.4-45.4c-26,0-38.9,19.5-38.9,45.4v525.7c0,45.4,38.9,77.9,77.9,77.9h571.1c45.4,0,77.9-38.9,77.9-77.9V383.2C860.2,357.2,840.7,337.7,821.3,337.7z"/><path d="M938.1,175.5H775.8V91.1c0-45.4-38.9-77.9-77.9-77.9H295.6c-45.4,0-77.9,38.9-77.9,77.9v84.4H55.4c-26,0-45.4,19.5-45.4,45.4s19.5,45.4,45.4,45.4h889.1c26,0,45.4-19.5,45.4-45.4C983.5,195,964,175.5,938.1,175.5L938.1,175.5z M697.9,175.5H302.1V143c0-26,19.5-38.9,38.9-38.9h311.5c26,0,38.9,19.5,38.9,38.9v32.5H697.9z"/><path d="M607.1,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-26,6.5-45.4,26-45.4,51.9v402.4C561.7,805,581.1,824.5,607.1,824.5L607.1,824.5z"/></g>
					</svg></a></span>
				</div>	
		
			</c:forEach>
			<input type="hidden" name="lineId" name="lineId" value="${line.lineId}" />
			<input type="hidden" name="attId" name="attId" value="${att.attId}" />
			<input name="detailStart" id="detailStart" placeholder="  添加起始地点" class="mess_2" type="text">
			<input name="detailEnd" id="detailEnd" placeholder="  添加终点" class="mess_2" type="text">
			<input name="detailLine" id="detailLine" placeholder="  添加路线" class="mess_2" type="text">
			<script>
			$(function(){
				init_city_select($("#detailStart, #sel2"));
			});
			$(function(){
				init_city_select($("#detailEnd, #sel2"));
			});
			</script>
			<br><br>
			<div class="mess_12"><input type="submit" value="提交" class="sub_pic"></div>
			</form>
		</div>
	</c:forEach>
	
	
	
	
	<div class="line_2"><a  title="添加路线" class="sub" href="javascript:void(0)" data-reveal-id="add"><svg style="width:27px;height:27px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
<g><g transform="translate(0.000000,448.000000) scale(0.100000,-0.100000)"><path d="M4835.7,4367.5c-201.6-52.6-379.1-197.2-471.1-385.6l-54.8-109.6l-6.6-1845l-6.6-1845l-1845-6.6l-1845-6.6l-109.6-54.8C356.9,44.3,225.4-87.1,157.5-225.2c-76.7-160-76.7-436,0-591.6c67.9-140.2,199.4-271.7,339.6-339.6l109.6-54.8l1845-6.6l1847.1-4.4l4.4-1847.1l6.6-1845l54.8-109.6c67.9-140.3,199.4-271.7,339.6-339.6c157.8-76.7,433.8-76.7,591.6,0c140.2,67.9,271.7,199.4,339.6,339.6l54.8,109.6l6.6,1845l4.4,1847.1l1847.1,4.4l1845,6.6l109.6,54.8c140.2,67.9,271.7,199.4,339.6,339.6c76.7,157.8,76.7,433.8,0,591.6c-67.9,140.2-199.4,271.7-339.6,339.6l-109.6,54.8l-1845,6.6l-1847.1,4.4l-4.4,1847.1l-6.6,1845l-54.8,109.6c-70.1,140.2-201.6,271.7-339.6,337.4C5177.5,4374.1,4954,4398.2,4835.7,4367.5z"/></g></g>
</svg></a>

</div>
	<div id="add" class="reveal-modal">
		<form action="${ context_path}/attraction/addline" method="post">
			<input type="hidden" name="t_info_id" value="${t_info.t_info_id }"/>
			<input name="l_name" placeholder="  请输入路线名称"   class="mess_2" type="text">
			<br>
			<div class="mess_12"><input type="submit" value="提交" class="sub_pic"></div>
		</form>		
	</div>
	<!--  
	<div class="line_2"><a  title="添加路线" class="sub" href="javascript:void(0)" data-reveal-id="add"><svg style="width:27px;height:27px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
<g><g transform="translate(0.000000,448.000000) scale(0.100000,-0.100000)"><path d="M4835.7,4367.5c-201.6-52.6-379.1-197.2-471.1-385.6l-54.8-109.6l-6.6-1845l-6.6-1845l-1845-6.6l-1845-6.6l-109.6-54.8C356.9,44.3,225.4-87.1,157.5-225.2c-76.7-160-76.7-436,0-591.6c67.9-140.2,199.4-271.7,339.6-339.6l109.6-54.8l1845-6.6l1847.1-4.4l4.4-1847.1l6.6-1845l54.8-109.6c67.9-140.3,199.4-271.7,339.6-339.6c157.8-76.7,433.8-76.7,591.6,0c140.2,67.9,271.7,199.4,339.6,339.6l54.8,109.6l6.6,1845l4.4,1847.1l1847.1,4.4l1845,6.6l109.6,54.8c140.2,67.9,271.7,199.4,339.6,339.6c76.7,157.8,76.7,433.8,0,591.6c-67.9,140.2-199.4,271.7-339.6,339.6l-109.6,54.8l-1845,6.6l-1847.1,4.4l-4.4,1847.1l-6.6,1845l-54.8,109.6c-70.1,140.2-201.6,271.7-339.6,337.4C5177.5,4374.1,4954,4398.2,4835.7,4367.5z"/></g></g>
</svg></a>

</div>
	<div id="add" class="reveal-modal">
		<form action="${ context_path}/attraction/addline" method="post">
			<input type="hidden" name="attId" id="attId" value="${att.attId }"/>
			<input name="lineName"  id="lineName" placeholder="  请输入路线名称"   class="mess_2" type="text">
			<br>
			<div class="mess_12"><input type="submit" value="提交" class="sub_pic"></div>
		</form>		
	</div>
-->



		<p>展示图片：</p>
		
		<div class="mess_8">
		<c:forEach items="${imgs}" var="img" step="1">
			<div class="mess_9">
				<img class="mess_10" src="${img.img }" />
				<div class="mess_11">		
					<a href="${ context_path}/attraction/deleteImg?imgId=${img.imgId }&attId=${att.attId }" title="删除"><svg style="width:20px;height:20px;color:red;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
					<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
					<g><path d="M386.4,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-19.5,6.5-38.9,26-38.9,51.9v402.4C347.5,805,367,824.5,386.4,824.5z"/><path d="M821.3,337.7c-26,0-45.4,19.5-45.4,45.4v480.3c0,26-19.5,38.9-38.9,38.9H256.6c-26,0-38.9-19.5-38.9-38.9V383.2c0-26-19.5-45.4-45.4-45.4c-26,0-38.9,19.5-38.9,45.4v525.7c0,45.4,38.9,77.9,77.9,77.9h571.1c45.4,0,77.9-38.9,77.9-77.9V383.2C860.2,357.2,840.7,337.7,821.3,337.7z"/><path d="M938.1,175.5H775.8V91.1c0-45.4-38.9-77.9-77.9-77.9H295.6c-45.4,0-77.9,38.9-77.9,77.9v84.4H55.4c-26,0-45.4,19.5-45.4,45.4s19.5,45.4,45.4,45.4h889.1c26,0,45.4-19.5,45.4-45.4C983.5,195,964,175.5,938.1,175.5L938.1,175.5z M697.9,175.5H302.1V143c0-26,19.5-38.9,38.9-38.9h311.5c26,0,38.9,19.5,38.9,38.9v32.5H697.9z"/><path d="M607.1,824.5c26,0,45.4-19.5,45.4-45.4V376.7c0-26-19.5-45.4-45.4-45.4c-26,6.5-45.4,26-45.4,51.9v402.4C561.7,805,581.1,824.5,607.1,824.5L607.1,824.5z"/></g>
					</svg>
					</a>
				</div>
			</div>
		</c:forEach>	
		
			
			<br><br><br><br><br><br>
			<form action="${ context_path}/attraction/addImg" method="post" enctype="multipart/form-data">
				<span style="color: red;font-size: 12px;">${msg }</span>
				<input type="hidden" name="attId" id="attId" value="${attId.attId}"/>
				<a href="javascript:void(0)" title="选择图片">
					<div class="pic2">
						<input class="pic" accept="image/*"  type="file" name="Photo" id="Photo" onchange="PreviewImage(this,'imgHeadPhoto','divPreview');" />
					</div>
				</a>
				<div>
					<img id="imgHeadPhoto" src="noperson.jpg" style="margin-top:10px;width:200px; height: 100px; border: solid 1px #d2e2e2;" alt="" />
				</div>
				
				<div class="mess_12"><input type="submit" value="提交" class="sub_pic"></div>
				<br /><br />
				</form>
		
		</div>
</div>
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