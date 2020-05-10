<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% 
		pageContext.setAttribute("context_path", request.getContextPath());
	%>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" href="${context_path }/css/register/input.css">
<link rel="stylesheet" href="${context_path }/css/register/jquery.slider.css" />
<script type="text/javascript" src="${context_path }/js/jquery.min.js"></script>
<script type="text/javascript" src="${context_path }/js/jquery.slider.min.js"></script>
</head>
<body>
  
<div class="input_main">
	<div class="input_head_1">
				<p class="input_head_font_1">
						账号管理 | 重置密码
				</p>
				<p class="input_head_font_2">	
					<a class="input_head_font_2" href="${ context_path}/tologin">
							登录/注册
					</a>
				</p>	
		
	</div>
</div>
<div class="middle_main">
	<div class="middle_main_1">
		
						<div class="">
							<i>1</i>
								<p>填写账号</p>
						</div>
						
						<i></i>
						
						<div>
							<i style="background-image:url(../image/register/2.png);">2</i>
							<p style="color:rgb(16,123,248)">验证密码</p>
						</div>
						
						<i style="background-image:url(../image/register/line.png);"> </i>
						
						<div>
							<i>3</i>
							<p>重置密码</p>
						</div>
						
						<i></i>
						
						<div>
							<i>4</i>
							<p>完成重置</p>
		
						</div>
		
	</div>
</div>

<div class="form">
	<div class="form_01">
		<form method="post" action="${context_path }/cust/get_answer.action" id="form_02" class="form_02" onSubmit="return check();">
				<p>请输入您的密保答案：</p><br>
				<div style="margin-left: 20px;">${question}${param.question}</div>
				<input placeholder="   密保答案" name="answer" id="username" type="text" required="required"><span id="account"><span>
				<input type="hidden"  id="user" name="user" value="${param.user}" />
				
				
				<div>
					<input class="submit" type="submit" onclick="check()" value="确认">
				</div>
		</form>
		
	</div>
</div>

<script type="text/javascript" color="102,185,255" zindex="-10" opacity="50" count="99" src="${context_path }js/canvas-nest.min.js"></script><canvas id="c_n3" width="1366" height="623" style="position: fixed; top: 0px; left: 0px; z-index: -10; opacity: 50;"></canvas>

</body>

</html>