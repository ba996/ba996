<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${context_path}/css/admin_add.css">
	<link rel="stylesheet" type="text/css" href="${context_path}/css/icons/font-awesome/css/font-awesome.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${context_path}/js/paging.js"></script>
	<link type="text/css" href="${context_path}/css/paging.css" rel="stylesheet">
	<title>景点管理</title>
	<style type="text/css">
	</style>
	<script type="text/javascript">
		function add()
		{
    		alert("添加成功！");
		}
		function delect(){
			alert("删除成功！");
		}
	</script>
</head>
<body>
	<!--页头-->
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
       <!--中部-->
	<h2 style="text-align: center; color: rgba(0,0,0,0.4);">所有景点</h2>
	<h5 style="position: relative;left: 85%;color: rgba(0,210,0,0.9);">你好!<p id="Userid"></p></h5>
	<p></p>
	<hr style="width: 80%;">
	 <c:forEach items="${attractions}" var="att" >
	<div class="container">
		<ul>
				<li>
					<div id="image">
						<a href="${context_path}/attraction/toUpdateAtt?attId=${att.attId}"><img id="Attphoto" src="${att.attPhoto}"></a> 
					</div>
					<div id="detali">
						<a href="${context_path}/attraction/toUpdateAtt?attId=${att.attId}"><h4 id="Attname" style="color: green;">${att.attName}</h4></a>
						<p id="Attintroduce" style="width: 600px; color: orange;"><abbr title="景点详情">${att.attIntroduce}</abbr></p>
						<h4 id="Attname" style="color: red;">评分：${att.attGrade}</h4>
						
						<li id="Attaddress"><span id="address_icon"></span><p id="address">${att.attAddress}</p></li>
						<p id="Attprice">
						<strong style="color: red;">${att.attPrice}</strong><small>起</small>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<c:forEach items="${counts}" var="count" >
						<c:if test="${count.attId==att.attId}">		
						已售${count.count}
						</c:if>
						</c:forEach>
						&nbsp;&nbsp;&nbsp;
						<a href="${context_path}/attraction/deleteAtt?attId=${att.attId}" ><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></a>
					</div>
				</li>
		</ul>
	</div>
	</c:forEach>
	<button id="add" ><a href="${context_path}/attraction/toaddAtt">点击添加景点</a></button><br><br>
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
                location="${context_path}/like/showLike?page="+page;
            }
            }
            });
            
                </script>
	<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>