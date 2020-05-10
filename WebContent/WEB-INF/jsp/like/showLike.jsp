<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>收藏夹</title>
	<%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
	<style type="text/css">
		body{
			overflow-x: hidden;
		}
		#jingdian{
			height: 700px;
		}
		#jingdian li{
			list-style: none;
			width: 250px;
			float:left;
			border-bottom: 2px solid #dfdfdf;
			transition: all .3s;
		}
		#jingdians li:hover{
			border-bottom: 2px solid #4fb59d;
			transform: translateY(-10px);
		}
		img{
			text-align: center;
			width: 250px;
		}
		#jingdian h4{
			text-align: center;
			emargin-top: 10px;
		}
		#jingdian p{
			text-align: center;
			margin-top: 10px 0px;
			color: #104e09d6;
		}
		#jingdian span{
			width: 18px;
			height: 18px;
			display: inline-block;
			background: url("./delete.png") -13px -13px;
			margin-left: 8px;
		}
		#jingdian .line{
			width: 0px;
			height: 328px;
			border-left: 1px solid #eaeaea;
			margin: 0px 10px;
		}
		.first a{color: #666666}
       .first a:hover{color: #00C8B4}
        .second a{color: #666666}
        .second a:hover{color:#09BB07}
        .thrid a{color: #666666}
        .thrid a:hover{color: #E3292D}

        #seq{
            width:1px;
            border-left:1px #000000 solid;
            margin-right: 5px;
        }

        .f{
            margin-top:10px;
        }
	</style>
	<script type="text/javascript">
		function deleteClass(){
			var id=$(this).parent().parnet().attr("id");
			$(this).parent().parent().remove(); 

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
	<h2 style="position: relative;left: 100px;color: rgba(0,0,0,0.4);">到你想去<h5 style="position: relative;left: 85%;color: orange;">你好，${user.userAccount}<p id="Userid"></p></h5></h2>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<a class="navbar-brand" href="#" style="position: relative;left: 150px;">喜欢的景点</a>
		<a class="navbar-brand" href="#" style="position: relative;left: 300px;">喜欢的城市</a>
	</div>
	<form class="navbar-form navbar-right" role="search" onsubmit="highlight(this.s.value);return false;">
		<div class="form-group">
			<input type="text" name="s" id="s" class="form-control" placeholder="输入你想去的景点或城市" style="border-radius: 10px;">
		</div>
		<button type="submit" class="btn btn-default" style="border-radius: 10px;">搜索</button>
	</form>
	</div>
	<div id="jingdian">
	<div class="container">
		<ul>
			<c:forEach items="${attractions}" var="att" end="4">
			<li class="line" id="line">
			<li>
				<div>
					<a href="#"><img src="${att.attPhoto}" ></img></a>
				</div>
				<h4 id="Attid"><a href="#">${att.attName}</a></h4>
				<p class="yuding" onclick="">
				<a href="#">现在预订</a>
				
				 <a href="${context_path}/like/deleteLike?attId=${att.attId}" ><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></a>
				</p>
			</li>
			<!--  
			<li class="line" id="line">
			<li>
				<div>
					<img src="./changcheng.jpg" id="Attphoto"><a href="#"></a></img>
				</div>
				<h4 id="Attid">长城</h4>
				<p class="yuding" onclick="">现在预订
					<span onclick=""><a href="#"></a></span>
				</p>

			</li>
			</li>
			<li class="line" id="line">
			<li>
				<div>
					<img src="./changcheng.jpg" id="Attphoto"><a href="#"></a></img>
				</div>
				<h4 id="Attid">长城</h4>
				<p class="yuding" onclick="">现在预订
					<span onclick=""><a href="#"></a></span>
				</p>

			</li>
			</li>
			<li class="line" id="line">
			<li>
				<div>
					<img src="./changcheng.jpg" id="Attphoto"><a href="#"></a></img>
				</div>
				<h4 id="Attid">长城</h4>
				<p class="yuding" onclick="">现在预订
					<span onclick=""><a href="#"></a></span>
				</p>

			</li>
			</li>
			-->
		</c:forEach>
		</ul>
	</div>
	</div>
</nav>
<div class="pagination-centered">
	<ul class="pager">
		<li><a href="previous disabled">上一页</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="next disabled">下一页</a></li>
	</ul>
</div>

	<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>