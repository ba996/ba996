<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
    <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${ context_path}/bootstrap/css/bootstrap.min.css">
     <link rel="stylesheet" href="${ context_path}/css/icons/font-awesome/css/font-awesome.min.css" >
         <link rel="stylesheet" href="${ context_path}/css/index.css">
    <link rel="stylesheet" href="${ context_path}/css/img.css">
    <link rel="stylesheet" href="${ context_path}/css/jdt.css">
    <link rel="stylesheet" href="${ context_path}/css/chat.css">
    <script rel="script" src="${ context_path}/bootstrap/js/jquery.min.js" ></script>
    <script rel="script" src="${ context_path}/bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${ context_path}/js/index.js"></script>
  
</head>
<body style="background: #f9f9f9">


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
<div class="container ju">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-3">
                <h1>TRAVEL</h1>
                <p>当季最适合去旅行的地方</p>
                <p>大众最喜欢的旅游胜地</p>
                <p><a class="btn btn-primary btn-large">了解更多</a></p>
            </div>

            <div class="col-md-9">
                <img src="${ context_path}/image/in.jpg">
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bg2">
    <h1 class="fo3"><span class="glyphicon glyphicon-thumbs-up"></span><em>全网力荐旅游攻略</em></h1>
    <div class="demo2">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="serviceBox">
                        <div class="service-icon">
                            <i class="fa fa-globe"></i>
                        </div>
                        <div class="service-Content">
                            <h3 class="title"><a href="#" target="_blank">重游三国故地</a></h3>
                            <p class="description">
                                合肥这座中国中部的小城市具有悠久的历史。三国的魏吴对抗，南北朝的“淝水之战”以及太平天国的“ 三河 镇大捷”等，都发生在 合肥 这一片古老的土地上。
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="serviceBox">
                        <div class="service-icon">
                            <i class="glyphicon glyphicon-grain"></i>
                        </div>
                        <div class="service-Content">
                            <h3 class="title"><a href="#" target="_blank">四天三晚暴走香港</a></h3>
                            <p class="description">
                                一场没有蓄谋，一场说走就走的行程。为了圆满结束18年，为了展望美好19年。挑了错峰的元旦假期，就是为了躲避拥堵和最重要的便宜机票便宜酒店。
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="serviceBox">
                        <div class="service-icon">
                            <i class="glyphicon glyphicon-tower"></i>
                        </div>
                        <div class="service-Content">
                            <h3 class="title"><a href="#" target="_blank">100天泰国缅甸之旅</a></h3>
                            <p class="description">
                                过去的几年很少用镜头拍下自己.<br>
                                这是第一次出国旅行，要是只用言语来讲述我的所见所闻.势必会留有遗憾.<br>
                                每场远行都有一个目的.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="serviceBox">
                        <div class="service-icon">
                            <i class="glyphicon glyphicon-tree-deciduous"></i>
                        </div>
                        <div class="service-Content">
                            <h3 class="title"><a href="#" target="_blank">遇见塔下</a></h3>
                            <p class="description">
                                塔下村是中国典型客家村落，小桥、流水、人家，一派江南水乡的秀丽景致，然而塔下村并没有塔，张氏子孙为了纪念开基祖华太婆从原住地“马头背”踏下山来。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="c2"></div>

<div class="container-fluid bg3">
    <div class="it2">
    <div id="box">
        <h1 class="fo2">
            <i class="fa fa-cog fa-spin fa-fw"></i>
            <em>旅游胜地推荐</em>
        </h1>
        <div id="container">
        <c:forEach items="${attractions}" var="att" end="4">
            <div class="item">
                <div class="pic">
                    <a href="${context_path}/showInfo?attId=${att.attId}"><img src="${att.attPhoto}" /></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="${context_path}/showInfo?attId=${att.attId}"> ${att.attName}</a>
                            <div style="float: right">
                                <input type="hidden" name="attId" value="${att.attId}">
                                <a class="shoucang" onclick="like(${att.attId})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg>
                                </div>
                                </a>
                            
                        </dt>
                        <dd class="info"><span>评分：${att.attGrade}</span></dd>
                        <dd><span>景区地址：${att.attAddress}</span></dd>
                        <dd><span>票&nbsp;&nbsp;价：${att.attPrice}</span></dd>
                        <dd><span>简介：${att.attIntroduce}</span><div class="star"><div style="width:48px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象:</span><span class="pink">过瘾</span><span class="blue">带劲</span><span class="green">有活力</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                         <c:forEach items="${evaluations}" var="eva" end="4">
                       
                         <c:if test="${eva.attId==att.attId}">
                        <div class="comment_list">
                            <ul id="list">
                             <c:if test="${eva.isAnonymous == false }">
                                <li><b>${eva.userNickname}：</b>${eva.evaContent}</li>
                                </c:if>
                      		 <c:if test="${eva.isAnonymous == true}">
                               <li><b>匿名：</b>${eva.evaContent}</li>
                               </c:if>
                            </ul>
                        </div>
                        </c:if>
                        
                         <c:if test="${empty evaluations}">
                        <h1 align="center" style="color: green;">${msg }</h1>
                        </c:if>
                        
                        </c:forEach>
                    </div>
                </div>
            </div>
            </c:forEach>
            
            <!-- 
            <div class="item">
                <div class="pic">
                    <a href="#"><img  src="images/2.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息2</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">点亮孩子智慧人生</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:48px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">亲切</span><span class="blue">耐心</span><span class="green">干净</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>Jcenter：</b>如此诚恳的教育机构 ...</li>
                                <li><b>citaslin：</b>孩子的进步很大</li>
                                <li><b>甲鱼爱媛媛：</b>七田阳光很注重品质，...</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/3.png" /></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息3</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">物超所值的性价比，尽在慕纱莹雪！</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:62px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">精致</span><span class="blue">做工好</span><span class="green">专业</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>小企鹅快跑：</b>这个周末去取了我定的...</li>
                                <li><b>月逢明时：</b>这家婚纱店的婚纱做工...</li>
                                <li><b>日历本丢了：</b>上周末去取了婚纱，婚...</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/4.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息4</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">一站式服务让你省时、省力、省钱、省心</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:48px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">口碑好</span><span class="blue">规模很大</span><span class="green">讲信誉</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>紫婧之梦：</b>这家店不错哦！</li>
                                <li><b>gotometop：</b>装修工都还挺朴实的，...</li>
                                <li><b>libangcheng1：</b>这家公司还可以，去年...</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/5.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息5</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">专注人类健康，打造财富传奇！</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:48px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">真好</span><span class="blue">专业</span><span class="green">手法好</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>永封de铁盒：</b>环境挺不错，灯光控制...</li>
                                <li><b>老冯爱国：</b>不错的地方，是个很有...</li>
                                <li><b>白云寺方丈：</b>我不会打台球，但朋友...</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/1.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息6</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">客户第一 执行有力 激情勤奋 简单团结</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:48px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">专业</span><span class="blue">安全</span><span class="green">积极</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>janice19891：</b>很负责任~</li>
                                <li><b>旺达是条鱼：</b>朋友参加过他们的拓展...</li>
                                <li><b>bjftxiaoniu：</b>吼吼，在这里看到他们...</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/2.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息7</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                    </dt>
                        <dd class="info">我们只祛痘 所以更专业</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:62px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">效果好</span><span class="blue">细心</span><span class="green">专业</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>天涯hehaijiao：</b>这家店很好，顾客很多...</li>
                                <li><b>爱神马geili：</b>我治疗了两天感觉的好...</li>
                                <li><b>天上的语言：</b>这几天已经看到明显效...</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="pic">
                    <a href="#"><img src="images/3.png"></a>
                </div>
                <div class="txt">
                    <dl>
                        <dt>
                            <a href="#">标题信息8</a>
                            <div style="float: right">
                                <input type="hidden" name="tinfo_id" value="${info.t_info_id}">
                                <a class="shoucang" onclick="like(${info.t_info_id})"  href="javascript:void(0)" title="收藏"><svg style="width:20px;height:20px;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve">
                                <metadata> Svg Vector Icons : http://www.sfont.cn </metadata>
                                    <g><path d="M500,931l-7.2-2.9c-15.6-6.3-100.4-74-291.3-245.4C62.6,558-4.5,419.5,12.6,292.8c11.7-87.2,65.2-160.6,146.6-201.3C189.1,76.6,220.4,69,252.3,69c116.3,0,211.2,98.5,247.7,142.3C536.4,167.5,631.4,69,747.7,69c31.9,0,63.2,7.6,93.1,22.5c81.4,40.7,134.9,114.1,146.6,201.3c17.1,126.7-50,265.2-188.9,389.9C607.6,854.1,522.9,921.8,507.2,928.1L500,931z M252.3,108c-25.8,0-51.3,6.2-75.6,18.3C105.9,161.7,61.4,222.7,51.2,298C35.9,411.6,98.5,537.9,227.5,653.7C414.1,821.2,479.4,872,500,886.8c20.6-14.8,85.9-65.6,272.4-233.1c129-115.8,191.6-242.1,176.3-355.7c-10.1-75.3-54.7-136.3-125.4-171.7C799,114.1,773.5,108,747.7,108c-126.5,0-230.8,144.7-231.8,146.2L500,276.5l-15.9-22.3C483.1,252.7,378.4,108,252.3,108z"/></g>
                                </svg></a>
                            </div>
                        </dt>
                        <dd class="info">口碑好 性价比高 无额外消费</dd>
                        <dd><span>景区地址：</span></dd>
                        <dd><span>开放时间：</span></dd>
                        <dd><span>总体评价：</span><div class="star"><div style="width:62px;" class="star_red"></div><div class="star_grey"></div></div></dd>
                        <dd><span>用户印象：</span><span class="pink">口碑好</span><span class="blue">很喜欢</span><span class="green">完美</span></dd>
                    </dl>
                    <div class="comment">
                        <h3>用户评价</h3>
                        <div class="comment_list">
                            <ul id="list">
                                <li><b>明确指出i：</b>拍的很不错，老妈都夸...</li>
                                <li><b>爱就一直走吧：</b>他们家服务态度好，衣...</li>
                                <li><b>爱过你me：</b>最后照片拍出来后朋友...</li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
             -->
        </div>
        <div id="control"></div>
    </div>
    </div>
</div>
<script type="text/javascript">
    function like(t_info_id){
// var tinfo_id = document.getElementById("tinfo_id").value;
    	url="${ context_path}/like/like.action?tinfo_id="+t_info_id;
		  window.location.href=url;
    }
</script>

<div class="c2"></div>


<!--旅行目的地游客百分比比较-->

<div class="demo">
    <div class="container">

        <h1 class="fo4"><span class="fa-rotate-90"><span class="glyphicon glyphicon-hourglass" style="font-weight: 800"><em>近年游客去往胜地排行</em></span></h1>

        <div class="row">
            <div class="col-md-6">
                <h3 class="progress-title">美国</h3>
                <div class="progress grey">
                    <div class="progress-bar" style="width:60%; background:#C3A49E;"></div>
                </div>

                <h3 class="progress-title">韩国</h3>
                <div class="progress yellow">
                    <div class="progress-bar" style="width:90%; background:#ffc116;"></div>
                </div>

                <h3 class="progress-title">巴拿马</h3>
                <div class="progress blue">
                    <div class="progress-bar" style="width:50%; background:#20a39e;"></div>
                </div>

                <h3 class="progress-title">英国</h3>
                <div class="progress green">
                    <div class="progress-bar" style="width:80%; background:#7cb518;"></div>
                </div>

                <h3 class="progress-title" style="text-align: center">境外</h3>
            </div>

            <div class="col-md-6">
                <h3 class="progress-title">湖北</h3>
                <div class="progress red">
                    <div class="progress-bar" style="width:60%; background:#ef5b5b;"></div>
                </div>

                <h3 class="progress-title">江南</h3>
                <div class="progress ye">
                    <div class="progress-bar" style="width:90%; background:#F9D9DE;"></div>
                </div>

                <h3 class="progress-title">西安</h3>
                <div class="progress bl">
                    <div class="progress-bar" style="width:50%; background:#FF7200;"></div>
                </div>

                <h3 class="progress-title">北京</h3>
                <div class="progress gr">
                    <div class="progress-bar" style="width:80%; background:#7794C0;"></div>
                </div>

                <h3 class="progress-title" style="text-align: center">境内</h3>
            </div>
        </div>
    </div>
</div>

<div class="c2"></div>
<!--图片轮播-->
<div class="container-fluid bg">
    <div class="container bo">
        <h1 class="fo1"><em><i class="fa fa-camera-retro"></i>&nbsp;&nbsp;游客随手拍</em></h1>
        <div class="container it">
            <div id="myCarousel" class="carousel slide" style="margin-top: 9px">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active fo">
                        <img src="${ context_path}/image/c.jpg" alt="First slide">
                        <div class="carousel-caption"><i class="fa fa-map-marker far" aria-hidden="true"></i>云南梯田</div>
                    </div>
                    <div class="item fo">
                        <img src="${ context_path}/image/d.jpg" alt="Second slide">
                        <div class="carousel-caption"><i class="fa fa-map-marker far" aria-hidden="true"></i>江南水乡</div>
                    </div>
                    <div class="item fo">
                        <img src="${ context_path}/image/e.jpg" alt="Third slide">
                        <div class="carousel-caption"><i class="fa fa-map-marker far" aria-hidden="true"></i>北京故宫</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <h4 class="ma"><a href="#"><b>更多旅游美图等你来看MORE</b></a></h4>
    </div>
</div>
<div class="c2"></div>



<!--页脚-->
<%@include file="../../../foot.html" %>

</body>
</html>