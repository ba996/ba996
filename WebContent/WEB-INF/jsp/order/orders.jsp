<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单</title>
<%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
    <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
    
    <link rel="stylesheet" type="text/css"  href="${ context_path}/css/order/sub_order.css">
    <link rel="stylesheet" type="text/css"  href="${ context_path}/css/order/kuCity.css">
    <link rel="stylesheet" type="text/css"  href="${ context_path}/css/order/reveal.css">
    <link rel="stylesheet" type="text/css"  href="${ context_path}/css/order/demo.css">
    <link rel="stylesheet" type="text/css"  href="${ context_path}/css/order/demo001.css">
    
    <script type="text/javascript" src="${ context_path}/js/order/jquery-1.6.2.js"></script>
    <script type="text/javascript" src="${ context_path}/js/order/jquery.reveal.js"></script>
    <script type="text/javascript" src="${ context_path}/js/order/jquery.min.js"></script> 
    <script type="text/javascript" src="${ context_path}/js/order/jquery.min1.js"></script>
    <script type="text/javascript" src="${ context_path}/js/order/jquery-validate.js"></script>
<style>
        .c2{
            background: #E0EEEE;
            border: 0 ;
            -webkit-box-shadow: 0 1px 4px rgba(0,0,0,.2);
            -moz-box-shadow: 0 1px 4px rgba(0,0,0,.2);
            -o-box-shadow: 0 1px 4px rgba(0,0,0,.2);
            box-shadow: 0 1px 4px rgba(0,0,0,.2);
            zoom: 1;
        }
        .fo1{
            font-family: 幼圆;
            font-size:64px;
            color: #3e8f3e;
        }

        .fo2{
            font-size: 20px;
        }
    </style>
  <script type="text/javascript">
　　window.onload = function(){

　　var btn = document.getElementById("su1");
　　btn.onclick = function(){

　　	var orderId=${orderId};
	var userId=${user.userId};
	var attId=${att.attId};
	var attName="${att.attName}";
	var attPrice=${att.attPrice};
    var orderNumber =$("#orderNumber").val();
    var orderMoney= document.getElementById("orderMoney").outerText;
    var isEva=0;
    var isOrder=0;
    var isDelete=0;
    $.ajax({
        url: "${ context_path}/order/addorders",        //后台url
        data:                           //数据
        	"&orderId="+orderId+
        	 "&userId="+userId+
        	"&attId="+attId+
        	 "&attName="+attName+
        	 "&attPrice="+attPrice+
            "&orderNumber="+orderNumber+
            "&orderMoney="+orderMoney+
             "&isEva="+isEva+
            "&isOrder="+isOrder+
             "&isDelete="+isDelete,
        type: "POST",                   //类型，POST或者GET
        success: function (data) {      //成功，回调函数
            document.getElementById("orderId").value=data;
        },
        error: function () {          //失败，回调函数
            alert("添加失败！");
        }
    });

　　}
}
</script>
   
</head>
<body >
<div class="container" style="margin-top:50px;width: 900px">
    <!--收银台-->
  <div class="row">
      <div class="col-md-5">
          <i class="fa fa-shopping-cart fa-4x" aria-hidden="true" style="color:#3e8f3e;"></i>
          <span class="fo1">收银台</span>
      </div>
      <div class="col-md-7" style="text-align: right;margin-top: 60px">
          <i class="fa fa-exclamation-triangle" style="color: #f0ad4e"></i>
          <span class="fo2">请确认好您的订单信息</span>
      </div>
  </div>

  
    <div class="c2" style="height: 5px"></div>
    <!--订单明细-->
    <div  class="c2" style="width: 750px;height: 400px;margin-left: 60px;">
        <!--旅游景点照片和名称-->
        <div style="text-align: center;padding-top: 10px">
            <img src="${att.attPhoto}" class="img-circle" style="height: 75px;width: 75px">
            <h4>${att.attName}</h4>
        </div>

        <div>
            <div class="col-md-6">
                <table id="tab" style="margin-left: 100px">
                    <tr>
                        <td>
                            <label id="oid" >订单编号：</label>
                            <c:if test="${order!=null}">
                            <label>20190${order.orderId}</label>
                            </c:if>
                             <c:if test="${order==null}">
                             <label>20190${orderId}</label>
                             </c:if>
                            <br><br>

                            <label id="odate">预定时间：</label>
                            <label><fmt:formatDate value='${date}' type ='date' pattern='yyyy-MM-dd  HH:mm:ss'/></label>
                            <br><br>

                            <label>单价：￥</label>
                            <span class="price" id="attPrice"><b>${att.attPrice}</b></span>
                            <br><br>

                            <label>人数：</label>
                            <input class="min" name="" type="button" value="-" />
                            <c:if test="${order!=null}">
                            <input class="text_box" id="orderNumber" name="" type="text" value="${order.orderNumber}" readonly="readonly" style="width: 30px" />
                            </c:if>
                             <c:if test="${order==null}">
                            <input class="text_box" id="orderNumber" name="" type="text" value="1" readonly="readonly" style="width: 30px" />
                            </c:if>
                            <input class="add" name="" type="button" value="+" />
                        </td>
                    </tr>
                </table>
                <div style="width: 100%;margin-left: 100px">
                    <br>
                    <c:if test="${order==null}">
                    <label>应付金额：￥<span id="orderMoney"></span></label>
                    </c:if>
                    <c:if test="${order!=null}">
                    <label>应付金额：￥<span id="orderMoney">${order.orderMoney}</span></label>
                    </c:if>
                </div>

                    <script>
                        $(function(){
                            $(".add").click(function(){
                                var t=$(this).parent().find('input[class*=text_box]');
                                t.val(parseInt(t.val())+1)
                                setTotal();
                            })
                            $(".min").click(function(){
                                var t=$(this).parent().find('input[class*=text_box]');
                                t.val(parseInt(t.val())-1)
                                if(parseInt(t.val())<0){
                                    t.val(0);
                                }
                                setTotal();
                            })
                            function setTotal(){
                                var s=0;
                                $("#tab td").each(function(){
                                    s+=parseInt($(this).find('input[class*=text_box]').val())*parseFloat($(this).find('span[class*=price]').text());
                                });
                                $("#orderMoney").html(s.toFixed(2));
                            }
                            setTotal();

                        })
                    </script>


                  
				<h1 align="center" style="color: red;">${msg }</h1>
                <div class="sub_01"><a class="sub" id="su1" href="javascript:void(0)" data-reveal-id="addManyLanMu">提交订单</a></div>
   
            </div>
        </div>

            <div class="col-md-5 col-md-offset-1">
               <a target="_blank" href="#"><img src="${att.attPhoto}" style="width: 250px;height: 135px"></a>
                <div class="col-md-12">
                    <form class="form-horizontal" action="#" method="post">
                        <div class="form-group">
                            <span>景区地址：</span>
                            <span>${att.attAddress}</span>
                        </div>
                        <div class="form-group">
                            <span>开放时间:</span>
                            <span>8:00~17:00</span>
                        </div>
                    </form>
                </div>
            </div>
    </div>
<div style="margin-left: 638px">
            <a href="${ context_path}/showAtt?isOrder=1">取消订单<span class="glyphicon glyphicon-share-alt"></span></a>
        </div>
        


<div id="addManyLanMu" class="reveal-modal">
    <form method="post" action="${ context_path}/order/payMoney">
        <h4>为您的订单付款
        </h4>
        <a class="close-reveal-modal">&#215;</a>
        <br>
        <p>请输入您的6位确认码：</p>


        <div id="payPassword_container" class="alieditContainer clearfix" data-busy="0">
            <div class="i-block" data-error="i_error">
                <div class="i-block six-password">
                    <input class="i-text sixDigitPassword" id="payPassword_rsainput" type="password" autocomplete="off" required="required" value="" name="payPassword_rsainput" data-role="sixDigitPassword" tabindex="" maxlength="6" minlength="6" aria-required="true">
                    <input type="hidden" id="pay_word" name="t_payword">
                    <input type="hidden" name="userId" id="userId" value="${user.userId}">
                    <c:if test="${order!=null}">
                    <input type="hidden" name="orderId" id="orderId" value="${order.orderId}">
                    </c:if> 
                    <c:if test="${order==null}">
                    <input type="hidden" name="orderId" id="orderId" value="${orderId}">
                    </c:if>        
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
				<h1 align="center" style="color: red;">${msg }</h1>
            </div>
            <div style="">
                <input type="submit"  value="确认付款" class="btn">
                <input type="submit"  value="取消付款" onclick="cancel()" class="btn">
            </div>
			<script>
			function cancel()
			{
				window.location.href="${ context_path}/order/selectUserAll?page=1"; 
			}
			</script>
           
        </div>
       </form>
</div>
</div>
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
<!--页脚-->
<%@include file="../../../foot.html" %>

</body>
</html>