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
	<link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${context_path}/js/paging.js"></script>
    <link type="text/css" href="${context_path}/css/paging.css" rel="stylesheet">
	<title>景点展示</title>
	<style type="text/css">
	</style>
	<script type="text/javascript">
	function like(t_info_id){
		  // var tinfo_id = document.getElementById("tinfo_id").value;
		 	url="${ context_path}/like/like.action?tinfo_id="+t_info_id;
			  window.location.href=url;
	 }
	function yuding(t_info_id ){
		  //alert("123");
		  url="${ context_path}/order/toaddorder?attId="+t_info_id;
		  window.location.href=url;
		
	}
	</script>
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
						<a href="${context_path}/showInfo?attId=${att.attId}"><img id="Attphoto" src="${att.attPhoto}"></a>
					</div>
					<div id="detali">
					<div class="de_20">
						<a class="shoucang" onclick="like(${att.attId})"  href="javascript:void(0)" title="收藏">
						<svg style="width:15px;height:15px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
					<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
					<g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
					</svg>加入收藏</a>
					
						<a href="${context_path}/showInfo?attId=${att.attId}"><h4 id="Attname" style="color: green;">${att.attName}</h4></a>
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
						<a onclick="yuding(${att.attId})" href="javascript:void(0)" class="yuding" role="button">立即预定</a>
					</div>
				</li>
			<li class="line"></li>

		</ul>
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
                location="${context_path}/like/showLike?page="+page;
            }
            }
            });
            
                </script>
	<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>