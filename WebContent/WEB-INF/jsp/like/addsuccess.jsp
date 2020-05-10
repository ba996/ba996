<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
<script type="text/javascript">
	
	alert("添加收藏成功，可以在我的收藏中查看！");
	window.location.href="${ context_path}/index"; 

</script>
</body>
</html>