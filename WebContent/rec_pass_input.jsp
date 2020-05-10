<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% 
		pageContext.setAttribute("context_path", request.getContextPath());
	%>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<meta name="renderer" content="webkit">
<meta name="keywords" content="重置密码">
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=11" />

<link rel="stylesheet" href="${context_path }/css/register/input.css">
<link rel="stylesheet" href="${context_path }/css/register/jquery.slider.css" />
<script src="https://cdn.bootcss.com/picturefill/3.0.3/picturefill.min.js"></script>
<script type="text/javascript" src="${context_path }/js/jquery.min.js"></script>
<script type="text/javascript" src="${context_path }/js/jquery.slider.min.js"></script>
</head>
<title>重置密码</title>
<body>
  <!--注释-->
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
							<i style="background-image:url(image/register/2.png);">1</i>
								<p style="color:rgb(16,123,248)">填写账号</p>
						</div>
						
						<i style="background-image:url(image/register/line.png);" ></i>
						
						<div>
							<i>2</i>
							<p>验证密码</p>
						</div>
						
						<i></i>
						
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
		<form method="post" action="${context_path }/cust/getquestion.action" data-animate-effect="fadeInLeft" id="form_02" class="form_02" onSubmit="return check12();">
				<p>请输入您的账号：</p><br>
				<input type="hidden"   id="user" name="user" value="${param.user }">
				<input placeholder="   账号" name="t_phone" id="username" type="text" required="required"><span id="account"><span>
				<div class="container">
					<div class="demo1">
						<div style="float:left;" id="slider1" class="slider"></div>
						<span id="mess"><span><span id="result1">false</span>
						<br>
					</div>
				</div>
				<div>
					<input class="submit" type="submit" onclick="check12()" value="确认">
				</div>
		</form>
		
	</div>
</div>

<script type="text/javascript" color="102,185,255" zindex="-10" opacity="50" count="99" src="${context_path }/js/canvas-nest.min.js"></script><canvas id="c_n3" width="1366" height="623" style="position: fixed; top: 0px; left: 0px; z-index: -10; opacity: 50;"></canvas>

</body>


<script>
document.getElementById("result1").style.display="none";
	$("#slider1").slider({
		callback: function(result) {
			$("#result1").text(result);
		}
	});
	$("#slider2").slider({
		width: 340, // width
		height: 40, // height
		sliderBg: "rgb(134, 134, 131)", // 滑块背景颜色
		color: "#fff", // 文字颜色
		fontSize: 14, // 文字大小
		bgColor: "#33CC00", // 背景颜色
		textMsg: "按住滑块，拖拽验证", // 提示文字
		successMsg: "验证通过", // 验证成功提示文字
		successColor: "red", // 滑块验证成功提示文字颜色
		time: 400, // 返回时间
		callback: function(result) { // 回调函数，true(成功),false(失败)
			$("#result2").text(result);
		}
	});
alert(result);
	// 还原
	$("#reset1").click(function() {
		$("#slider1").slider("restore");
	});

	$("#reset2").click(function() {
		$("#slider2").slider("restore");
	});
</script>
<script type="text/javascript" src="${context_path }/js/check.js"></script>
</html>