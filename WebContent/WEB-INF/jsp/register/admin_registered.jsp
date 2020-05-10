<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="${context_path }/css/register/demo.css">
<link rel="stylesheet" href="${context_path }/css/register/jquery.slider.css" />
<script type="text/javascript" src="${context_path }/js/jquery.min.js"></script>
<script type="text/javascript" src="${context_path }/js/jquery.slider.min.js"></script>
<script src="${context_path }/jquery/jquery-1.9.1.min.js"></script>
<script src="${context_path }/jquery/jquery-1.8.2.min.js"></script>
<script src="${context_path }/cityselect/cityselect.js"></script>
<script src="${context_path }/js/ver.js"></script>
<link href="${context_path }/cityselect/cityLayout.css" type="text/css" rel="stylesheet">
<script src="${context_path }/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${context_path }/js/jquery-validate.js" type="text/javascript"></script>
<script>

$(function(){
	init_city_select($("#adminAddress, #sel2"));
});

</script>



<script>
		function Register(){
			$("#adminAccountMessage").empty();
			$("#adminPasswordMessage").empty();
			$("#adminPhoneMessage").empty();
			$("#adminEmailMessage").empty();
			
			var adminAccount = $("#adminAccount").val();
			var adminPassword = $("#adminPassword").val();
			var adminPhone = $("#adminPhone").val();
			var adminEmail = $("#adminEmail").val();
			var adminAddress = $("#adminAddress").val();
			var adminQuestion = $("#adminQuestion").val();
			var adminAnswer = $("#adminAnswer").val();
			var adminPayword = $("#payPassword_rsainput").val();
			$.ajax({
				url: "${context_path}/admin/register",
				data: "&adminAccount=" + adminAccount + "&adminPassword=" + adminPassword + "&adminPhone=" + adminPhone 
				+ "&adminEmail=" + adminEmail+ "&adminAddress=" + adminAddress+ "&adminQuestion=" + adminQuestion
				+ "&adminAnswer=" + adminAnswer,
				type: "POST",
				success: function(result) {
					if(result.code == 1) { 
						window.location.href = "${context_path}/tologin";
					} else {
						$("#adminAccountMessage").append(result.resultDate.adminAccountMessageMessage);
						$("#adminPhoneMessage").append(result.resultDate.adminPhoneMessage);
						$("#adminPasswordMessage").append(result.resultDate.adminPasswordMessage);
						$("#adminEmailMessage").append(result.resultDate.adminEmailMessage);
					}
				}
			});
		}

		
		function checkadminname(adminAccount){
			//清空之前显示的提示信息
			$("#adminAccountMessage").empty();
		
			if(adminAccount.value == "") {
				$("#adminAccountMessage").append("用户名不能为空！");
				return false;
			}
			//当用户名不为 null 且格式正确时发送 ajax 请求 ， 检查用户名是否可用
			$.ajax({
				url: "${context_path}/admin/checkadminname",
				data: "adminAccount=" + adminAccount.value,
				type: "GET",
				success: function(result) {
					if(result.code == 1) {
						
					} else {
						$("#adminAccountMessage").append(result.resultDate.adminAccountMessage);
					}
				}
			});
		}
	
		function checkpassword(adminPassword){
			//清空之前显示的提示信息
			$("#adminPasswordMessage").empty();
			
			//密码格式正则表达式
			var pattern = /^([0-9]|[a-zA-Z]){6,16}$/;

			if(adminPassword.value == "") {
				$("#adminPasswordMessage").append("密码不能为空！");
				return false;
			} else if(!pattern.test(adminPassword.value)) {
				$("#adminPasswordMessage").append("密码的格式为： 6-12位的字母或数字组合！");
				return false;
			}
		}
		
		function checkphone(adminPhone){
			//清空之前显示的提示信息
			$("#adminPhoneMessage").empty();
			
			//手机号格式正则表达式
			var pattern = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;

			if(adminPhone.value == "") {
				$("#adminPhoneMessage").append("手机号不能为空！");
				return false;
			} else if(!pattern.test(adminPhone.value)) {
				$("#adminPhoneMessage").append("请输入正确的手机号格式！");
				return false;
			}
			
		}
		
		function checkemail(adminEmail){
			//清空之前显示的提示信息
			$("#emailMessage").empty();
			
			//邮箱格式正则表达式
			var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			
			if(adminEmail.value == "") {
				$("#adminEmailMessage").append("邮箱不能为空！");
				return false;
			} else if(!pattern.test(adminEmail.value)) {
				$("#adminEmailMessage").append("请输入正确的邮箱格式！");
				return false;
			}
			
		}
	</script>
	
<!--  
<script>

    function ishavephone () {
    	var phone = document.getElementById("t_phone").value;
    	//alert(phone);
        $.ajax({
            url: "../../login/ishavephone.action",        //后台url
            type: "POST",                   //类型，POST或者GET
            data: {                          //数据
            	t_phone:phone
            },
            success: function (data) {      //成功，回调函数
                //alert(data);
                $('#ishave').html(data);
                
               
            
            },
            error: function (er) {          //失败，回调函数
                alert(er);
            }
        });
    }
</script>
-->
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
    width: 250px;
    height: 30px;  
    color: #fff;
    font-size: 12px;
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
    -webkit-admin-select: initial;
    outline: 'none';
    z-index: 999;
    opacity:0;
    filter:alpha(opacity=0);
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
  #ishave{
  	color: red;
  	font-size: 12px;
  	margin-left: 50px;
  
  }
 .six-password{
    position: relative;
    height:33px;
    width:182px;
    overflow: hidden;
    vertical-align: middle;
    
}
</style>
<title>管理员注册</title>
</head>
<body>
  
<div class="input_main">
	<div class="input_head_1">
				<p class="input_head_font_1">
						账号管理 | 注册账号
				</p>
				<p class="input_head_font_2">	
					<a class="input_head_font_3" href="${context_path }/tologin">
							登录
					</a>
				</p>	
		
	</div>
</div>
<div class="sign">
	<div class="sign_01">
	<form action="" method="post" onsubmit="return Register()">
		<div class="sign_02">
			<p>请填写您的游客信息：</p>
				<div class="sign_03">
					<input placeholder="  请输入用户名" minlength="2" name="t_name" id="adminAccount" class="input" type="text" required="required" onchange="checkadminname(this)">
					 <span><h3  id="adminAccountMessage"></h3></span>
					<input placeholder="  请输入手机号" minlength="11" maxlength="11" name="t_phone" id="adminPhone" onchange="checkphone(this)" class="input" type="text" required="required">
					 <span><h3  id="adminPhoneMessage"></h3></span>
					<input placeholder="  请输入登录密码" minlength="8" maxlength="25" name="t_pass" id="adminPassword" class="input" type="password" required="required" onchange="checkpassword(this)">
					 <span><h3  id="adminPasswordMessage"></h3></span>
					<input placeholder="  请输入邮箱" name="t_email" id="adminEmail"  class="input" type="email" required="required" onchange="checkemail(this)">
					 <span><h3  id="adminEmailMessage"></h3></span>
					
				</div>
				
				<div class="sign_04">
					
					<input name="t_address"  id="adminAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
					<li class="return_reques">
								<input type="text" placeholder="请选择您的密保问题" id="adminQuestion" name="t_question" class="local select_style provin_select">
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
					
					<input name="t_answer" placeholder="  请输入密保答案" minlength="2" id="adminAnswer" class="input" type="text" required="required">
					
		
	

				</div>
				
			<input type="submit" onclick="aa()" value="立即注册" class="submit_10">
		
		</div>
		</form>
	</div>
</div>

<script type="text/javascript" color="102,185,255" zindex="-10" opacity="50" count="99" src="${context_path }/js/canvas-nest.min.js"></script><canvas id="c_n3" width="1366" height="623" style="position: fixed; top: 0px; left: 0px; z-index: -10; opacity: 50;"></canvas>
<script>
$(function(){
	function select_simulated(select_style,bomb_con_style){
		$(document).click(function(){
			$(bomb_con_style).hide();
			})
		$(select_style).live('click',function(e){
			var thisinput=$(this);
			var local=$(this).position();
			var bomb_con=$(bomb_con_style);
				$(this).parents("li").siblings().find(bomb_con_style).hide();
				$(this).parent().find(bomb_con_style).width($(this).width());//下拉框的宽度
				$(this).parent().find(bomb_con_style).show();
				e?e.stopPropagation():event.cancelBubble = true;
				bomb_con.find("dd").click(function(e){
				var bomb_text=$(this).text();
				$(this).addClass("selected").siblings().removeClass("selected");
				$(this).parents(bomb_con_style).hide();
				$(this).parents("li").find(select_style).val(bomb_text);
				e?e.stopPropagation():event.cancelBubble = true;
				
		});	
		});
		 return false;
	}
	select_simulated(".provin_select",".provin_con");
	
	  
	$(".local").focus(function(){
		$(this).addClass("local3");
	});
	$(".local").blur(function(){
		$(this).removeClass("local3");
	});
	})
</script>

</body>
</html>