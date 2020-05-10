<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>评价</title>
<%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ context_path}/css/evaluation.css">
     <link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
    <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
    <script rel="script" src="${ context_path}/js/eva.js"></script>
</head>
<body  style="background: #f8f8f8">
<!-- 导航栏 -->
<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
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
<!--评论标题-->
<div class="container" style="margin-top:50px">
    <div class="row">
        <div class="col-md-2">
            <span class="glyphicon glyphicon-comment" id="icon_1"></span>
        </div>
        <div class="col-md-6" id="font_1">
           <b>说你想说</b>
            <div class="row">
            <div class="col-md-6 col-md-offset-1" id="font_2">
                to say what you want
            </div>
            </div>
        </div>
    </div>
    <div id="sep_1"></div>
</div>

<!--评论表单-->
<div class="container" id="c1">
    <div class="container">
         <form action="${ context_path}/eva/addEva" method="post" enctype="multipart/form-data">

            <div class="col-md-6 col-md-offset-3">
                <!--评分-->
                   <div class="form-group" id="font_3">评分:
                       <a href="javascript:click(1)"><img src="${ context_path}/image/star.png" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
                       <a href="javascript:click(2)"><img src="${ context_path}/image/star.png" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
                       <a href="javascript:click(3)"><img src="${ context_path}/image/star.png" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
                       <a href="javascript:click(4)"><img src="${ context_path}/image/star.png" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
                       <a href="javascript:click(5)"><img src="${ context_path}/image/star.png" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
                       &nbsp;<span id="message"></span>
                   </div>
                <input type="hidden" id="attId" name="attId" value="${attId}"> <!--景点id-->
                <input type="hidden" id="userId" name="userId" value="${userId}"> <!--用户id-->
                 <input type="hidden" id="orderId" name="orderId" value="${orderId}"> <!--订单Id-->
                <input type="hidden" id="evaGrade" name="eva_grade" value="">  <!--评分分数-->
                <!--评论内容框-->
                <div class="form-group">
                    <span id="font_3">我想说:</span><br>
                    <textarea class="form-control" rows="10" id="evaContent" name="evaContent" value=""></textarea>
                    <!--上传照片-->
                    <div class="form-group row" style="margin-top: 5px" enctype='multipart/form-data'>
                        <label for="upimg" class="col-sm-2" id="upi">上传图片</label>
                          <input class="col-sm-5" type="file" id="Photo" name="Photo" value="" ccept="image/gif,image/jpeg,image/x-png"/>
                         
                    </div>
                    <!--是否匿名-->
                    <input type="checkbox" id="checkbox" name="is_anonymous" value=""><span id="font_3">匿名评价</span>
                    <input type="hidden" id="userNickname" name="userNickname" value="">
                 </div>
				<!-- 判断是否匿名 -->
				<script>
				var objChk = document.getElementById("checkbox");  
				if(objChk.checked){  
					document.getElementById("userNickname").value="匿名";  
				}else {document.getElementById("userNickname").value="${user.userNickname}"; } 
				</script>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="提交评价">
                </div>
             </div>

          </form>
    </div>
</div>

<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>