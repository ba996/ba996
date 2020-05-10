<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
    <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ context_path}/css/order.css">
     <link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
    <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${context_path}/js/paging.js"></script>
    <link type="text/css" href="${context_path}/css/paging.css" rel="stylesheet">
    <!--  
<script type="text/javascript">
$(document).ready(function() {
	//调用客户端分页*/
	$(this).cPager({
		pageSize: 10, //每一页显示的记录条数
		pageid: "pager", //分页容器ID
		itemClass: "li-item" //个体元素名称
	});
});
</script>
-->
</head>
<body>
<header>
    <nav class="navbar navbar-default" style="border: hidden">
        <div class="container-fluid" style="background:  #D3F7EE">

            <div class="navbar-header" id="n1">
                <a class="navbar-brand" href="#">
                    <span class="glyphicon glyphicon-globe" style="color: green"></span>
                    <span style="font-family: 'Chaparral Pro Light'">TOURISM</span>
                </a>
            </div>


            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li id="n2"><a href="${ context_path}/index">tourism<span class="sr-only">(current)</span></a></li>
                    <%if(session.getAttribute("user")==null&&session.getAttribute("admin")==null ){%>
                    <li><a href="${ context_path}/tologin">登录/注册</a></li>
                    <%}else{%>
							<li><a href="${ context_path}/quit">退出</a></li>
							<%}%>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                <%if(session.getAttribute("user")!=null){%>
                    <a href="${ context_path}/user/infromation"><img src="${user.userPhoto}" style="height: 30px;width: 30px;margin-right: 25px" alt="tourism" ></a>
                    <%}else if(session.getAttribute("admin")!=null){%>
                     <a href="${ context_path}/admin/infromation"><img src="${admin.adminPhoto}" style="height: 30px;width: 30px;margin-right: 25px" alt="tourism" ></a>
                    <%}%>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                <%if(session.getAttribute("admin")!=null){%>
                    <li><a href="${ context_path}/admin/infromation">个人中心</a></li>
                    <%}else {%>
                    <li><a href="${ context_path}/user/infromation">个人中心</a></li>
                    <%}%>
                     
					
					<%if(session.getAttribute("admin")!=null){%>
					<li><a href="#">订单管理</a></li>
                    
                     <%}else {%>
                    <li class="dropdown">
                        <a href="${ context_path}/order/selectUserAll?page=1" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的订单<span class="caret"></span></a>
                        <ul class="dropdown-menu" >
                            <li><a href="${ context_path}/order/selectUserAll?page=1">全部订单</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${ context_path}/order/selectFishing?isOrder=0&page=1">待付款</a></li>
                            <li><a href="${ context_path}/order/selectFishing?isOrder=1&page=1">已付款</a></li>
                            <li><a href="${ context_path}/order/selectIsEva?isEvaluation=0&page=1"">待评价</a></li>
                            <li><a href="${ context_path}/order/selectIsEva?isEvaluation=1&page=1">已评价</a></li>
                        </ul>
                    </li>
                    <%}%>

					<%if(session.getAttribute("admin")!=null){%>
					<li><a href="#">线路管理</a></li>
                     <%}else{%>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的评价<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${ context_path}/eva/showUserEva">全部评价</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">待评价</a></li>
                            <li><a href="#">已评价</a></li>
                        </ul>
                    </li>
                    <%}%>
                    
					<%if(session.getAttribute("admin")!=null){%>
					<li><a href="#">景区照片集</a></li>
                    
                     <%}else{%>
                    <li><a href="${context_path}/like/showLike">我的收藏</a></li>
                    <%}%>
                    
                    
                    <%if(session.getAttribute("admin")!=null ){%>
                    <li><a href="${context_path}/showAtt?isOrder=1">景点管理</a></li>
                    <%}else{ %>
					<li><a href="${context_path}/showAtt?isOrder=1">景点概览</a></li>
					<%} %>
					
					<%if(session.getAttribute("admin")!=null){%>
					<li><a href="#">未完待续</a></li>
					 <%}else {%>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的足迹<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">全部足迹</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">已完成</a></li>
                        </ul>
                    </li>
                    <%}%>

                </ul>
            </div>
        </div>
    </nav>
</header>
<div class="container">
    <div class="row">
        <!--左侧导航条-->
        <div class="col-md-1">
            <div class="list-group" style="width: 45px">
    			<button type="button" class="list-group-item"><a href="${ context_path}/order/selectUserAll?page=1">全部订单</a></button>
                <button type="button" class="list-group-item" onclick=""><a href="${ context_path}/order/selectFishing?isOrder=0&page=1">待付款</a></button>
                <button type="button" class="list-group-item" onclick=""><a href="${ context_path}/order/selectFishing?isOrder=1&page=1">已付款</a></button>
                <button type="button" class="list-group-item" onclick=""><a href="${ context_path}/order/selectIsEva?isEvaluation=0&page=1">待评价</a></button>
                <button type="button" class="list-group-item" onclick=""><a href="${ context_path}/order/selectIsEva?isEvaluation=1&page=1">已评价</a></button>
            </div>
        </div>
        <!--全部订单-->
        <h1 align="center" style="color: green;">${msg}</h1>
         <c:forEach items="${orders}" var="order">
        <div class="col-md-10 c2">
            <div class="row" style="margin-top: 10px">
                <div class="col-md-3"  style="margin-left: 30px">
                    <img src="${ context_path}/image/a.png" id="pic" class="img-circle"><!--商家图标-->
                    <span>景点编号:${order.attId}</span><!--景点编号-->
                </div>
                <div class="col-md-3">
                    <span>订单编号：${order.orderId}</span>
                    <!--订单编号-->
                </div>
                <div class="col-md-3">
                    <span>时间：<fmt:formatDate value='${order.orderTime}' type ='date' pattern='yyyy-MM-dd  HH:mm:ss'/></span>
                </div>
                <div class="col-md-2" style="text-align: right">
                   <a href="${context_path}/order/userdelete?orderId=${order.orderId}&isDelete=1" ><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></a>
                </div>
            </div>
            <div class="row" style="margin-top: 10px;height: 160px">
                <div class="col-md-3"  style="margin-left: 30px">
                    <img src="${ context_path}/image/a.png" class="img-rounded" id="pic1" name="eva_photo">
                </div>
                <div class="col-md-2">
                    <span>人数：${order.orderNumber}</span>
                    <!--订单人数-->
                </div>
                <div class="col-md-2">
                    <span>单价：￥${order.attPrice}元</span>
                    <!--价格-->
                </div>
                <div class="col-md-3">
                    <span>总金额：${order.orderMoney}元</span>
                </div>

                <div class="col-md-2">
                    <span>是否评价:</span>
                    <c:if test="${order.isOrder == true }">
                        <c:if test="${order.isEvaluation == false}">
                            <a  href="${ context_path}/eva/toaddeva?userId=${order.userId}&attId=${order.attId}&orderId=${order.orderId}" role="button">去评价</a>
                        </c:if>
                         <span>已评价</span>
                    </c:if>
                    <c:if test="${order.isOrder == false }">
                        <a onclick=""  href="javascript:void(0)">去支付</a>
                    </c:if>


                </div>

                <div class="col-md-2">
                    <span>是否支付:</span>
                    <c:if test="${order.isOrder == false }">
                        <a href="${ context_path}/order/toaddorder?attId=${order.attId}&orderid=${order.orderId}"><span>待付款</span></a>
                    </c:if>
                    <c:if test="${order.isOrder == true }">
                        <span style="color:#666;">已付款</span>
                            <a href="${ context_path}/order/toaddorder?attId="${order.attId}"><input type="button" class="btn btn-success btn-sm" value="再次购买"></a>
                    </c:if>
                </div>
                
            </div>
        </div>
        </c:forEach>
        <!-- 分页 -->
        <div class="row foot">
			<div class="col-sm-12 text-left">
				<div class="box" id="box"></div>
			</div>
		</div>
            
            
            
                <script>
                $('#box').paging({
                    initPageNo:${pageInfo.pageNum},
                    totalPages:${pageInfo.pages},
                    totalCount:'合计'+${pageInfo.total}+'条数据',
                    slideSpeed:600,
                    jump:true,
                    callback:function (page) {
                        if (page!=${pageInfo.pageNum}&& ${pageInfo.pageNum}!=0){
                location="${context_path}/order/selectUserAll?page="+page;
            }
            }
            });
            
                </script>
        
    </div>
</div>
<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>