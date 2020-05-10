<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="container" style="margin-top:50px;width: 900px;margin-bottom:50px">
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
    <div class="c2" style="width: 750px;height: 400px;margin-left: 60px;">
        <!--旅游景点照片和名称-->
        <div style="text-align: center;padding-top: 10px">
            <img src="${att.attPhoto}" class="img-circle" style="height: 75px;width: 75px">
            <h4>${att.attName}</h4>
        </div>

        <div>
            <div class="col-md-6">
                <form class="form-horizontal" action="${ context_path}/order/addorders" method="post">
                <input type="hidden" id="userId" name="userId" value="${user.userId}" />
                <input type="hidden" id="attId" name="attId" value="${att.attId}" />
                <input type="hidden" id="attName" name="attName" value="${att.attName}" />
                <input type="hidden" id="attName" name="attName" value="${att.attPrice}" />
                <input type="hidden" id="IsOrder" name="IsOrder" value="1" />
                <input type="hidden" id="IsEvaluation" name="IsEvaluation" value="0" />
                <input type="hidden" id="IsDelete" name="IsDelete" value="0" />
                    <div class="form-group">
                        <label class="col-sm-5 control-label">订单编号：</label>
                        <label class="col-sm-4 control-label">20190226</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">预定时间：</label>
                        <label class="col-sm-4 control-label">20190226</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">单价：</label>
                        <label class="col-sm-1 col-sm-offset-1 control-label">
                            <i class="fa fa-jpy" aria-hidden="true"></i>
                        </label>
                        <label class="col-sm-1 control-label" id="attPrice">${att.attPrice}</label>
                        <label class="col-sm-1 control-label">元</label>
                    </div>
                       <div class="form-group">
                        <label class="col-sm-5 control-label" id="number">人数：</label>
                        <div class="col-sm-5 col-md-offset-1">
                            <input class="min" name="" type="button" value="-" />
                            <input class="text_box"  id="orderNumber" name="" type="text" value="1" readonly="readonly" style="width: 25px" />
                            <input class="add" name="" type="button" value="+" />
                        </div>
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
                                $("#total").html(s.toFixed(2));
                            }
                            setTotal();

                        })
                    </script>
                    <div class="form-group">
                        <label class="col-sm-5 control-label">总计：</label>
                        <label class="col-sm-1 col-md-offset-1 control-label">
                            <i class="fa fa-jpy" aria-hidden="true"></i>
                        </label>
                        <label class="col-sm-1 control-label" id="orderMoney"></label>
                        <label class="col-sm-1 control-label">元</label>
                    </div>
                    <div style="margin-left: 325px">
                     <span class="font_mess" id="Message" style="color: red;">${msg}</span>
                        <input type="submit" class="btn btn-primary btn-lg" value="支付">
                    </div>
                </form>
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
                            <span>开放时间：</span>
                            <span>2019-00-12</span>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

</div>
<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>