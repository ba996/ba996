<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>我的评价</title>
    <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ context_path}/css/evaluation.css">
     <link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
    <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${ context_path}/js/cPager.js"></script>
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
<<header>
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
<!--评论标题-->
<div class="container" style="margin-top:50px">
    <div class="row">
        <div class="col-md-2">
            <span class="glyphicon glyphicon-comment" id="icon_1"></span>
        </div>
        <div class="col-md-6" id="font_1">
            <b>全部评论</b>
            <div class="row">
                <div class="col-md-6 col-md-offset-1" id="font_2">
                    ALL COMMENTS
                </div>
            </div>
        </div>
    </div>
    <div class="c2" style="height: 5px"></div>
</div>
<!--评论列表-->
<h1 align="center" style="color: green;">${msg}</h1>
<c:forEach items="${evaluations}" var="eva" step="1">
<div>
<div class="container">
    <div class="c2">
    <div class="row" style="margin-left:30px;margin-top:10px">
    	<span>
				<c:if test="${eva.isAnonymous == true}">
					匿名评价
				</c:if>
				<c:if test="${eva.isAnonymous == false}">
				<span>昵称:${eva.userNickname}</span><!--昵称-->
				</c:if>
				
			</span>
    </div>
    <div class="row" style="margin-top: 10px">
        <div class="col-md-3"  style="margin-left: 30px">
        <c:forEach items="${attractions}" var="att" step="1">
        	<c:if test="${att.attId == eva.attId}">
            <img src="${att.attPhoto}" id="pic" class="img-circle"><!--商家图标-->
            </c:if>
            </c:forEach>
            <span>景点编号:${eva.attId}</span><!--景点编号-->
        </div>
        <div class="col-md-4">
            <span>评分：${eva.evaGrade}分</span>
        </div>
        <div class="col-md-3">
            <span>时间:<fmt:formatDate value='${eva.evaTime}' type ='date' pattern='yyyy-MM-dd  HH:mm:ss'/></span>
        </div>
       
    </div>
    <div class="row" style="margin-top: 10px;height: 160px">
        <div class="col-md-3"  style="margin-left: 30px">
            <img src="${eva.evaPhoto}" class="img-rounded" id="pic1" name="eva_photo">
        </div>
        <div class="col-md-4">
            <span>评价：${eva.evaContent}</span>
        </div>
         <div class="col-md-1" style="text-align: center">
            <i class="fa fa-trash-o fa-lg" aria-hidden="true"></i>
            <a href="${context_path}/eva/deleteEva?evaId=${eva.evaId}" >删除</a>
        </div>
        <div class="col-md-2" style="text-align: end;margin-top: 100px">
            <input type="button" class="btn btn-danger btn-lg" value="再次购买">
        </div>
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
                location="${context_path}/eva/showUserEva?page="+page;
            }
            }
            });
            
                </script>
<div style="margin-bottom:10px">
</div>
<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>