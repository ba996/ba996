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
	init_city_select($("#userAddress, #sel2"));
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
			<img class="touxiang" src="${user.userPhoto}"/>
		</div>
		<a data-reveal-id="555"  style="margin-left:240px;">更改头像</a>
		<div id="555" class="reveal-modal">

								<h4>上传图片
								</h4>
								<br>
							<a class="close-reveal-modal">&#215;</a>						
							<form method="post" action="${ context_path}/user/modifiImg" enctype="multipart/form-data">
								<a href="javascript:void(0)" title="选择图片">
									<div class="pic2">
										<input class="pic" accept="image/*"  type="file" name="Photo" id="Photo" onchange="PreviewImage(this,'imgHeadPhoto','divPreview');" />
									</div>
								</a>
								<br><input name="userId" id="userId" value="${user.userId}" type="hidden" />
								<div>
									<img id="imgHeadPhoto" src="${user.userPhoto}" style="width: 50px; height: 50px; border: solid 1px #d2e2e2;" alt="" />
								</div>
								<br>
								<div style="position: absolute;right: 45%;">
									<input type="submit" value="提交" class="btn">
								</div>
							</form>
							
				</div>		
		<div class="mess_2">
			<span class="mess_3">余额：￥${user.userMoney}</span>
			<a href="javascript:void(0)" data-reveal-id="666"><span class="mess_4">充值</span></a>
			<div id="666" class="reveal-modal">
						<form action="${ context_path}/user/modifiMoney" method="post">
								<h4>充值金额
								</h4>
								<input name="userId"  id ="userId" value="${user.userId}" type="hidden" />
								请输入充值金额：<input class="mon" type="number" name="userMoney" />
								<div style="position: absolute;right: 45%;">
									<input type="submit" value="确定" class="btn">
								</div>
						</form>
							
				</div>	
		</div>
		
			<p>请填写您需要修改的信息：</p>
			<form action="${ context_path}/user/modifiInfo" method="post">
				<div style="color: red;margin-left: 150px;">${mess }</div>
					<input value="${user.userNickname}" placeholder="  请输入用户名" name="userNickname" id="userNickname" class="input_1" type="text" required="required">
					<input value="${user.userEmail}" placeholder="  请输入邮箱" name="userEmail" id="userEmail" class="input_1" type="text" required="required">
					<input value="${user.userPassword}" name="userPassword" type="hidden">
					<input value="${user.userPhoto}" name="userPhoto" type="hidden">
					<input value="${user.userId}" name="userId" type="hidden">
					<input value="${user.userPhone}" name="userPhone" type="text" placeholder="  请输入手机号" class="input_1" required="required">
					<input value="${user.userMoney}" name="userMoney" type="hidden">
					
					<input value="${user.userAddress}" name="userAddress"  id="userAddress" placeholder="  请选择您的地址"  type="text"  class="city_input" readonly="readonly">	 
					<li class="return_reques">
								<input value="${user.userQuestion}" type="text" placeholder="请选择您的密保问题" name="userQuestion" class="local select_style provin_select">
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
					
					<input value="${user.userAnswer}" name="userAnswer" placeholder="  请输入密保答案" id="t_email" class="input_1" type="text" required="required">
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
				
			<div style="width:200px;margin:20px auto;">	
			<input type="submit" value="立即修改" onclick="aa()" class="submit_10">
			<div>
		</div>
		</form>
	</div>
</div>		
<script>
function aa(){
var pay=document.getElementById('payPassword_rsainput').value;
if(pay!=null){
document.getElementById('pay_word').value=pay;
}

}
	
</script>
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