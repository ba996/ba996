<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<!DOCTYPE html>
<head>
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<title>登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ context_path}/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${ context_path}/jquery/jQuery1.7.js"></script>
<script type="text/javascript" src="${ context_path}/jquery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${ context_path}/jquery/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${ context_path}/js/login/Validform_v5.3.2_min.js"></script>
<script>

//用于验证码的转换
function change(img) {
	img.src = img.src + "?" + new Date().getTime();
}
function index(){
	$("#div1").fadeIn();
}
</script>
<script type="text/javascript">

/*游客登录信息验证*/
function Login() {
	var userAccount = $("#userAccounts").val();
	var userPassword = $("#userPassword").val();
	var vdcode = $("#vdcode").val();
	
	//保存用户信息 
	var objChk = document.getElementById("remember");  
	

    //判断是否保存密码
	if(objChk.checked){  
        //添加cookie  
        addCookie("Name",userAccount,7,"/");  
        addCookie("Password",userPassword,7,"/");  
        alert("记住了你的密码登录。");   
    }else{  
    	deleteCookie("Name","/");
    	deleteCookie("Password","/");
        alert("不记密码登录。");     
    }  
	
	$("#Message").empty();

	var URL ="${context_path}/user/login";
	
	$.ajax({
		withCredentials:true,
		url: URL,
		data: "userAccount=" + userAccount + "&userPassword=" + userPassword + "&vdcode=" + vdcode + "&remember=" + remember,
		type: "Get",
		success: function(result) {
			if(result.code==1) {
				window.location.href = "${context_path}/index";
				$("#Message").append(result.resultDate.Message);
			} else {
				$("#Message").append(result.resultDate.Message);
			}
		}
	});
}
/*管理员登录信息验证*/
 function login() {
	var adminAccount = $("#adminAccounts").val();
	var adminPassword = $("#adminPassword").val();
	var vdcode = $("#vdcode1").val();
	
	//保存用户信息 
	var objChk = document.getElementById("remember1");  
	

    //判断是否保存密码
	if(objChk.checked){  
        //添加cookie  
        addCookie("Name",adminAccount,7,"/");  
        addCookie("Password",adminPassword,7,"/");  
        alert("记住了你的密码登录。");   
    }else{  
    	deleteCookie("Name","/");
    	deleteCookie("Password","/");
        alert("不记密码登录。");     
    }  
	
	$("#Message").empty();

	var URL ="${context_path}/admin/login";
	
	$.ajax({
		withCredentials:true,
		url: URL,
		data: "adminAccount=" + adminAccount + "&adminPassword=" + adminPassword + "&vdcode1=" + vdcode + "&remember=" + remember,
		type: "Get",
		success: function(result) {
			if(result.code==1) {
				window.location.href = "${context_path}/index";
				$("#Message").append(result.resultDate.Message);
			} else {
				$("#Message").append(result.resultDate.Message);
			}
		}
	});
}

function addCookie(name,value,days,path){   /**添加设置cookie**/  
    var name = escape(name);  
    var value = escape(value);  
    var expires = new Date();  
    expires.setTime(expires.getTime() + days * 3600000 * 24);  
    //path=/，表示cookie能在整个网站下使用，path=/temp，表示cookie只能在temp目录下使用  
    path = path == "" ? "" : ";path=" + path;  
    //GMT(Greenwich Mean Time)是格林尼治平时，现在的标准时间，协调世界时是UTC  
    //参数days只能是数字型  
    var _expires = (typeof days) == "string" ? "" : ";expires=" + expires.toUTCString();  
    document.cookie = name + "=" + value + _expires + path;  
}  
function getCookieValue(name){  /**获取cookie的值，根据cookie的键获取值**/  
    //用处理字符串的方式查找到key对应value  
    var name = escape(name);  
    //读cookie属性，这将返回文档的所有cookie  
    var allcookies = document.cookie;         
    //查找名为name的cookie的开始位置  
    name += "=";  
    var pos = allcookies.indexOf(name);      
    //如果找到了具有该名字的cookie，那么提取并使用它的值  
    if (pos != -1){                                             //如果pos值为-1则说明搜索"version="失败  
        var start = pos + name.length;                  //cookie值开始的位置  
        var end = allcookies.indexOf(";",start);        //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置  
        if (end == -1) end = allcookies.length;        //如果end值为-1说明cookie列表里只有一个cookie  
        var value = allcookies.substring(start,end); //提取cookie的值  
        return (value);                           //对它解码        
    }else{  //搜索失败，返回空字符串  
        return "";  
    }  
}  
function deleteCookie(name,path){   /**根据cookie的键，删除cookie，其实就是设置其失效**/  
    var name = escape(name);  
    var expires = new Date(0);  
    path = path == "" ? "" : ";path=" + path;  
    document.cookie = name + "="+ ";expires=" + expires.toUTCString() + path;  
}  
  
/**实现功能，保存用户的登录信息到cookie中。当登录页面被打开时，就查询cookie**/  
window.onload = function(){   
    var username = getCookieValue("userAccounts");  
    document.getElementById("userAccounts").value = userAccount;  
    var userPassword = getCookieValue("userPassword");  
    document.getElementById("userPassword").value = userPassword;  
  	if(userPassword.length != 0 && userPassword.length != 0){
  		$("#remember").prop("checked", true);
  	}
}  


	$(document).ready(function(){
		var $tab_li = $('#tab ul li');
		$tab_li.hover(function(){
			$(this).addClass('selected').siblings().removeClass('selected');
			var index = $tab_li.index(this);
			$('div.tab_box > div').eq(index).show().siblings().hide();
		});	
	});
	
	window.onload = function(){   
	    var username = getCookieValue("adminAccounts");  
	    document.getElementById("adminAccounts").value = adminAccount;  
	    var userPassword = getCookieValue("adminPassword");  
	    document.getElementById("adminPassword").value = adminPassword;  
	  	if(adminPassword.length != 0 && adminPassword.length != 0){
	  		$("#remember1").prop("checked", true);
	  	}
	}  


		$(document).ready(function(){
			var $tab_li = $('#tab ul li');
			$tab_li.hover(function(){
				$(this).addClass('selected').siblings().removeClass('selected');
				var index = $tab_li.index(this);
				$('div.tab_box > div').eq(index).show().siblings().hide();
			});	
		});
	</script>
	
<!--  
<script type="text/javascript">
		$(function(){   
		/*游客登录信息验证*/
		$("#stu_username_hide").focus(function(){
		 var username = $(this).val(); 
		 if(username=='输入游客账号'){
		 $(this).val('');
		 }
		});
		
		$("#stu_username_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入游客账号');
		 }
        });

		$("#stu_password_hide").focus(function(){
		 var username = $(this).val();
		 if(username=='输入游客密码'){
		 $(this).val('');
		 }
        });	
		$("#stu_password_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入游客密码');
		 }
		});
		
		$("#stu_code_hide").focus(function(){
		 var username = $(this).val();
		 if(username=='输入验证码'){
		 $(this).val('');
		 }
		});	
		$("#stu_code_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入验证码');
		 }
		});
		
		$(".stu_login_error").Validform({
			tiptype:function(msg,o,cssctl){
				var objtip=$(".stu_error_box");
				cssctl(objtip,o.type);
				objtip.text(msg);
			},
			ajaxPost:true
		});

		 
/*管理员登录信息验证*/
		$("#sec_username_hide").focus(function(){
		 var username = $(this).val();
		 if(username=='输入管理员账号'){
		 $(this).val('');
		 }
		});
		$("#sec_username_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入管理员账号');
		 }
		});
		
		$("#sec_password_hide").focus(function(){
		 var username = $(this).val();
		 if(username=='输入管理员密码'){
		 $(this).val('');
		 }
		});
		$("#sec_password_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入管理员密码');
		 }
		});
		$("#sec_code_hide").focus(function(){
		 var username = $(this).val();
		 if(username=='输入验证码'){
		 $(this).val('');
		 }
		});
		$("#sec_code_hide").focusout(function(){
		 var username = $(this).val();
		 if(username==''){
		 $(this).val('输入验证码');
		 }
		});
		$(".sec_login_error").Validform({
			tiptype:function(msg,o,cssctl){
				var objtip=$(".sec_error_box");
				cssctl(objtip,o.type);
				objtip.text(msg);
			},
			ajaxPost:true
		});
		});
  </script>
  -->
<script type="text/javascript">
$(function(){
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");	
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	}
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	}
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});
</script>

</head>

<body>
<div id="tab">
  <ul class="tab_menu">
    <li class="selected">游客登录</li> 
    <li>管理员登录</li>
    <h1 align="center" style="color: red;">${msg }</h1>
  </ul>
 
 <div class="tab_box"> 
    <!-- 游客登录开始 -->
    
    <div>
      <div class="stu_error_box"></div>
      <form action="" method="post" class="stu_login_error">
		 <div id="username">
          <label>账&nbsp;&nbsp;&nbsp;号：</label>
          <input type="text" id="userAccounts" name="User_account" value="${param.User_account}" placeholder="输入游客账号" 
           nullmsg="账号不能为空！" datatype="s2-12" errormsg="账号范围在2~12个字符之间！" sucmsg="账号验证通过！"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
     
	    <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="userPassword" name="User_password"  placeholder="输入游客密码" autocomplete="off"
          nullmsg="密码不能为空！" datatype="*2-12" errormsg="密码范围在2~12位之间！" />
        </div>
        
		<div id="code">
          <label>验证码：</label>
          <input type="text" id="vdcode" name="User_code"   placeholder="输入验证码" 
          nullmsg="验证码不能为空！" datatype="*4-4" errormsg="验证码有4位数！" />
         <img src="${context_path}/getVerifyCode" onclick="change(this)">
       </div>
	    <div class="remenber">
          <input  type="checkbox" name="remember" id="remember" >记住密码
        </div>
       
        <span class="font_mess" id="Message" style="color: red;">${Message}</span>
        
		<div id="login">
            <button type="button" value="登录" class="form-control" onclick="Login()">登录</button>
        </div>
		
		<div><p class="pass">
						<a href="rec_pass_input.jsp?user=cust" class="pass_forget">
							忘记密码？
						</a>
						<a href="ch_registered.html" class="sign_up">
							立即注册
						</a>
					<p>
		</div>
      </form>
    </div>
   <!-- 游客登录结束-->
 
   <!-- 管理员登录开始-->
    <div class="hide">
    <div class="sec_error_box"></div>
      <form action="" method="post" class="sec_login_error">
      
	  <div id="username">
          <label>账&nbsp;&nbsp;&nbsp;号：</label>
          <input type="text" id="adminAccounts" name="adminAccounts" value="${param.Admin_account}" placeholder="输入管理员账号" 
           nullmsg="账号不能为空！" datatype="s2-12" errormsg="账号范围在2~12个字符之间！" sucmsg="账号验证通过！"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
       
	   <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="adminPassword" name="Admin_password" value="${param.Admin_password}" placeholder="输入管理员密码" 
           nullmsg="密码不能为空！" datatype="*2-12" errormsg="密码范围在2~12位之间！" sucmsg="密码验证通过！"/>
        </div>
      <div id="code">
          <label>验证码：</label>
          <input type="text" id="vdcode1" name="User_code"   placeholder="输入验证码" 
          nullmsg="验证码不能为空！" datatype="*4-4" errormsg="验证码有4位数！" />
         <img src="${context_path}/getVerifyCode" onclick="change(this)">
       </div>
        
        <div class="remenber1">
          <input  type="checkbox" name="remember1" id="remember1" >记住密码
        </div>
       
         <span class="font_mess" id="Message" style="color: red;">${Message}</span>
        
		<div id="login">
            <button type="button" value="登录" class="form-control" onclick="login()">登录</button>
        </div>
		<div><p class="pass">
				<a href="rec_pass_input.jsp?user=admin" class="pass_forget">忘记密码？</a>
				<a href="ch_registered.html" class="sign_up">立即注册</a>
			  <p>
		</div>
      </form>
    </div>
     <!-- 管理员登录结束-->
  </div>
</div>

<div class="screenbg">
  <ul>
    <li><a href="javascript:;"><img src="${ context_path}/image/login/0.jpg"></a></li>
    <li><a href="javascript:;"><img src="${ context_path}/image/login/1.jpg"></a></li>
    <li><a href="javascript:;"><img src="${ context_path}/image/login/2.jpg"></a></li>
  </ul>
</div>

</body>
</html>
