<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="exception_deal.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>exception</title>
</head>
<body>
	<h1>测试异常的页面</h1>
	<h4>必须设置errorPage（表示异常处理页面）</h4>
	<%
		System.out.print(100 / 0);
	%>
</body>
</html>