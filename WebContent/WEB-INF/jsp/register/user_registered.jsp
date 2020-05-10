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
	init_city_select($("#userAddress, #sel2"));
});

</script>



<script>
		function Register(){
			$("#userAccountMessage").empty();
			$("#userPasswordMessage").empty();
			$("#userPhoneMessage").empty();
			$("#userEmailMessage").empty();
			
			var userAccount = $("#userAccount").val();
			var userPassword = $("#userPassword").val();
			var userPhone = $("#userPhone").val();
			var userEmail = $("#userEmail").val();
			var userAddress = $("#userAddress").val();
			var userQuestion = $("#userQuestion").val();
			var userAnswer = $("#userAnswer").val();
			var userPayword = $("#payPassword_rsainput").val();
			$.ajax({
				url: "${context_path}/user/register",
				data: "userAccount=" + userAccount + "&userPassword=" + userPassword + "&userPhone=" + userPhone 
				+ "&userEmail=" + userEmail+ "&userAddress=" + userAddress+ "&userQuestion=" + userQuestion
				+ "&userAnswer=" + userAnswer+ "&userPayword=" + userPayword,
				type: "POST",
				success: function(result) {
					if(result.code == 1) { 
						window.location.href = "${context_path}/tologin";
					} else {
						$("#userAccountMessage").append(result.resultDate.userAccountMessageMessage);
						$("#userPhoneMessage").append(result.resultDate.userPhoneMessage);
						$("#userPasswordMessage").append(result.resultDate.userPasswordMessage);
						$("#userEmailMessage").append(result.resultDate.userEmailMessage);
					}
				}
			});
		}

		
		function checkusername(userAccount){
			//清空之前显示的提示信息
			$("#userAccountMessage").empty();
		
			if(userAccount.value == "") {
				$("#userAccountMessage").append("用户名不能为空！");
				return false;
			}
			//当用户名不为 null 且格式正确时发送 ajax 请求 ， 检查用户名是否可用
			$.ajax({
				url: "${context_path}/user/checkusername",
				data: "userAccount=" + userAccount.value,
				type: "GET",
				success: function(result) {
					if(result.code == 1) {
						
					} else {
						$("#userAccountMessage").append(result.resultDate.userAccountMessage);
					}
				}
			});
		}
	
		function checkpassword(userPassword){
			//清空之前显示的提示信息
			$("#userPasswordMessage").empty();
			
			//密码格式正则表达式
			var pattern = /^([0-9]|[a-zA-Z]){6,16}$/;

			if(userPassword.value == "") {
				$("#userPasswordMessage").append("密码不能为空！");
				return false;
			} else if(!pattern.test(userPassword.value)) {
				$("#userPasswordMessage").append("密码的格式为： 6-12位的字母或数字组合！");
				return false;
			}
		}
		
		function checkphone(userPhone){
			//清空之前显示的提示信息
			$("#userPhoneMessage").empty();
			
			//手机号格式正则表达式
			var pattern = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;

			if(userPhone.value == "") {
				$("#userPhoneMessage").append("手机号不能为空！");
				return false;
			} else if(!pattern.test(userPhone.value)) {
				$("#userPhoneMessage").append("请输入正确的手机号格式！");
				return false;
			}
			
		}
		
		function checkemail(userEmail){
			//清空之前显示的提示信息
			$("#emailMessage").empty();
			
			//邮箱格式正则表达式
			var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			
			if(userEmail.value == "") {
				$("#userEmailMessage").append("邮箱不能为空！");
				return false;
			} else if(!pattern.test(userEmail.value)) {
				$("#userEmailMessage").append("请输入正确的邮箱格式！");
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
    -webkit-user-select: initial;
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
<title>游客注册</title>
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
					<input placeholder="  请输入用户名" minlength="2" name="t_name" id="userAccount" class="input" type="text" required="required" onchange="checkusername(this)">
					 <span><h3  id="userAccountMessage"></h3></span>
					<input placeholder="  请输入手机号" minlength="11" maxlength="11" name="t_phone" id="userPhone" onchange="checkphone(this)" class="input" type="text" required="required">
					 <span><h3  id="userPhoneMessage"></h3></span>
					<input placeholder="  请输入登录密码" minlength="8" maxlength="25" name="t_pass" id="userPassword" class="input" type="password" required="required" onchange="checkpassword(this)">
					 <span><h3  id="userPasswordMessage"></h3></span>
					<input placeholder="  请输入邮箱" name="t_email" id="userEmail"  class="input" type="email" required="required" onchange="checkemail(this)">
					 <span><h3  id="userEmailMessage"></h3></span>
					
				</div>
				
				<div class="sign_04">
					
					<input name="t_address"  id="userAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
					<li class="return_reques">
								<input type="text" placeholder="请选择您的密保问题" id="userQuestion" name="t_question" class="local select_style provin_select">
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
					
					<input name="t_answer" placeholder="  请输入密保答案" minlength="2" id="userAnswer" class="input" type="text" required="required">
					<div class="tips">请输入六位确认码（数字）：</div>
								<div id="payPassword_container" class="alieditContainer clearfix" data-busy="0">
	<div class="i-block" data-error="i_error">
		<div class="i-block six-password">
			<input class="i-text sixDigitPassword" id="payPassword_rsainput" type="password" autocomplete="off" required="required" value="" name="payPassword_rsainput" data-role="sixDigitPassword" tabindex="" maxlength="6" minlength="6" aria-required="true">
			<input type="hidden" id="pay_word" name="t_payword">
			<div tabindex="0" class="sixDigitPassword-box" style="width: 180px;">
				<i style="width: 29px; border-color: transparent;" class=""><b style="visibility: hidden;"></b></i>
				<i style="width: 29px;"><b style="visibility: hidden;"></b></i>
				<i style="width: 29px;"><b style="visibility: hidden;"></b></i>
				<i style="width: 29px;"><b style="visibility: hidden;"></b></i>
				<i style="width: 29px;"><b style="visibility: hidden;"></b></i>
				<i style="width: 29px;"><b style="visibility: hidden;"></b></i>
				<span style="width: 29px; left: 0px; visibility: hidden;" id="cardwrap" data-role="cardwrap"></span>
			</div>
		</div>
		
	</div>
</div>
				</div>
				
			<input type="submit" onclick="aa()" value="立即注册" class="submit_10">
		
		</div>
		</form>
	</div>
</div>
<script>
function aa(){
var pay=document.getElementById('payPassword_rsainput').value;
document.getElementById('pay_word').value=pay;
}
	
</script>
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
<script type="text/javascript">
var _formPay = $('#form_paypsw');
				
			_formPay.validate({
					rules : {
						'payPassword_rsainput':{
							'minlength':6,
							'maxlength':6,
							required:true,
							digits : true,
							numPassword : true,
							echoNum :true
						}
					},
					
					messages:{
						'payPassword_rsainput':{
							'required' : '<i class="icon icon-attention icon-lg"></i>&nbsp;请填写支付密码',
							'maxlength' : '<i class="icon icon-attention icon-lg"></i>&nbsp;密码最多为{0}个字符',
							'minlength' : '<i class="icon icon-attention icon-lg"></i>&nbsp;密码最少为{0}个字符',
							'digits':'<i class="icon icon-attention icon-lg"></i>&nbsp;密码只能为数字',
							'numPassword' : '<i class="icon icon-attention icon-lg"></i>&nbsp;连号不可用，相同数字不可用（如：123456，11111）',
							'echoNum' :'<i class="icon icon-attention icon-lg"></i>&nbsp;连号不可用，相同数字不可用（如：123456，11111）'		
						}
					},
					errorPlacement : function(error, element) {
						element.closest('div[data-error="i_error"]').append(error);
					},	
					submitHandler : function(form){
						var _form = $(form);
						form.submit();

					}
				});
				
var payPassword = $("#payPassword_container"),
    _this = payPassword.find('i'),	
	k=0,j=0,
	password = '' ,
	_cardwrap = $('#cardwrap');
	//点击隐藏的input密码框,在6个显示的密码框的第一个框显示光标
	payPassword.on('focus',"input[name='payPassword_rsainput']",function(){
	
		var _this = payPassword.find('i');
		if(payPassword.attr('data-busy') === '0'){ 
		//在第一个密码框中添加光标样式
		   _this.eq(k).addClass("active");
		   _cardwrap.css('visibility','visible');
		   payPassword.attr('data-busy','1');
		}
		
	});	
	//change时去除输入框的高亮，用户再次输入密码时需再次点击
	payPassword.on('change',"input[name='payPassword_rsainput']",function(){
		_cardwrap.css('visibility','hidden');
		_this.eq(k).removeClass("active");
		payPassword.attr('data-busy','0');
	}).on('blur',"input[name='payPassword_rsainput']",function(){
		
		_cardwrap.css('visibility','hidden');
		_this.eq(k).removeClass("active");					
		payPassword.attr('data-busy','0');
		
	});
	
	//使用keyup事件，绑定键盘上的数字按键和backspace按键
	payPassword.on('keyup',"input[name='payPassword_rsainput']",function(e){
	
	var  e = (e) ? e : window.event;
	
	//键盘上的数字键按下才可以输入
	if(e.keyCode == 8 || (e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)){
			k = this.value.length;//输入框里面的密码长度
			l = _this.size();//6
			
			for(;l--;){
			
			//输入到第几个密码框，第几个密码框就显示高亮和光标（在输入框内有2个数字密码，第三个密码框要显示高亮和光标，之前的显示黑点后面的显示空白，输入和删除都一样）
				if(l === k){
					_this.eq(l).addClass("active");
					_this.eq(l).find('b').css('visibility','hidden');
					
				}else{
					_this.eq(l).removeClass("active");
					_this.eq(l).find('b').css('visibility', l < k ? 'visible' : 'hidden');
					
				}				
			
			if(k === 6){
				j = 5;
			}else{
				j = k;
			}
			$('#cardwrap').css('left',j*30+'px');
		
			}
		}else{
		//输入其他字符，直接清空
			var _val = this.value;
			this.value = _val.replace(/\D/g,'');
		}
	});	
	
</script>
</body>
</html>