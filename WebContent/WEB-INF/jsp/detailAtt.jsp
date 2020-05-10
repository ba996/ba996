<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${ context_path}/css/index.css" type="text/css"/>
<link rel="stylesheet" href="${ context_path}/css/css/detail.css" type="text/css"/>
<script src="${ context_path}/js/jquery.min.js"></script>
 <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
     <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
<title>景区详细信息</title>
</head>
<style > 
.out_line{
	   width: 80px;
	   height:40px;
        line-height: 30px;
        margin:0 auto;
        color: #456;
        background-color: #EDEDED;;
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

	margin: 0 auto;
	list-style: none;
}
#quantity{
width: 30px;}
</style>
<script>
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
function img123(){
	
	var oldimg = document.getElementById('img');
    var img = document.getElementsByTagName('img')[0];
    nWidth = img.naturalWidth     //图片真实宽度
    nHeight = img.naturalHeight   //图片真实高度
    var a  = 250/parseFloat(nHeight);
    var b = 250/parseFloat(nWidth);
    
    if(nWidth<200){
    	oldimg.style.transform="scale("+b+")";
    }
    if(nHeight<200){
    	oldimg.style.transform="scale("+a+")";
    	
    }
}

function index(){
	   $("#div1").fadeIn();
	   $("#div2").fadeIn();
	   $("#div3").fadeIn();
}

</script>
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



<div class="col_4" >
<div class="font_1" id="div1" style="display:none;">详细信息</div>
	<div class="col_5">
		
	</div>
</div>


<div class="de_1">
    <img src="${attraction.attPhoto}" />
</div>
<div class="de_2">
<p class="title_1">${attraction.attName}</p>
</div>
<br />
<div class="de_20">
	<a class="shoucang" onclick="like(${attraction.attId})"  href="javascript:void(0)" title="收藏">
	<svg style="width:15px;height:15px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
<metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
<g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
</svg>加入收藏</a>

<a onclick="yuding(${attraction.attId})" href="javascript:void(0)" class="yuding" role="button">立即预定</a>
</div>
<br><br>
<div class="de_3">
<p class="title_2">综合评分：<span style="font-size: 18px;color: red;font-weight: bolder;">${attraction.attGrade}</span>分</p>
<br />
<p class="title_2">去过的人</p>
<br />
<div style="width: 900px;margin: 0 auto;">
<c:forEach items="${foot }" var="foot" step="1">
	<div style="width: 50px;height: 50px;margin-left: 20px;float: left;">
	<p style="font-size: 12px;width: 50px;text-align: center;">${foot.t_name }</p>
	<img style="width: 50px;height: 50px;" src="${foot.t_img }" alt="" />
	</div>
</c:forEach>
<c:if test="${empty foot }">
<br />
<div>暂时还没有去过的人</div>
</c:if>


</div>

<br /><br /><br /><br />
<p class="title_2">景区美观</p>
<br />
</div>
<div class="show_pic">

<div class="show_pic_1">
<c:forEach items="${imgs}" var="img" >
		<img id="show" src="${img.img}" alt="" />
</c:forEach>
</div>
<br /><br />

<div class="inter_1"><br /><br /><br /><br /><br /><br />
	<p class="inter_2">景区介绍</p>
	<div class="inter_3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	${attraction.attIntroduce}</div>
</div>
<div class="inter_1">
	<p class="inter_2">推荐路线</p>
</div>
<c:if test="${empty details}">
	<div style="width: 150px;margin: 0 auto;color: #222;font-size: 18px;">
		暂无推荐路线
	</div>
</c:if>
<c:forEach var="item" items="${lines}">
	<div class="inter_1">
		<div id="nav">
		    <ul>
		        <li><a href="javascript:void(0)">${item.lineName}</a>
		        	<ul>
		            <c:forEach var="detail" items="${details}">
		                <li><a href="javascript:void(0)">${detail.detailLine}</a></li>
		            </c:forEach>
		            </ul>
		        </li>
		    </ul>
		</div>
	</div>
</c:forEach>
<br />
<div class="ping_1">
<p>累计评价</p>
</div>
<c:if test="${empty evaluations }">
	<div style="width: 100px;margin: 0 auto;color: #222;font-size: 18px;">
		暂无评价
	</div>
</c:if>

<c:forEach items="${evaluations }" var="rate" step="1">
	<div class="pin_1">
			<span class="user_111" style="">
				<c:if test="${rate.isAnonymous == true}">
					<span>匿名评价</span>
				</c:if>	
				<c:if test="${rate.isAnonymous == false}">
					<span>${rate.userNickname}</span>
				</c:if>
			</span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="float: right;">时间：<fmt:formatDate value='${rate.evaTime}' type ='date' pattern='yyyy-MM-dd  HH:mm:ss'/></span>
			<span style="float: right;margin-right: 150px;">评分：${rate.evaGrade}分</span>
			<br />
			<div class="my_font_1">
				${rate.evaContent}
			</div>	
			<br />
	</div>
</c:forEach>


<br /><br /><br /><br />

<!--页脚-->
<%@include file="../../../foot.html" %>
</body>
</html>
