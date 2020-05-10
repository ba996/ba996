<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%
			pageContext.setAttribute("context_path", request.getContextPath());
		%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert</title>
</head>
<body>
<script type="text/javascript">
	
	alert("预订成功");
	window.location.href="${ context_path}/order/selectUserAll?page=1"; 

</script>
</body>
</html>