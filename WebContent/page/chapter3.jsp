<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp内置对象（上）</title>
</head>
<body>
	<h1>简介</h1>
	<h3>1.内置对象简介</h3>
	<h3>2.四种作用于域范围</h3>
	<h3>3.out</h3>
	<h3>4.request/response</h3>
	<h3>5.session</h3>
	<h3>6.application</h3>
	<h3>7.其他内置对象</h3>
	<hr>
	<h4>jsp内置对象：web容器创建的一组对象不适用new就可以使用的一组对象</h4>
	<h4>九大内置对象：常用：(out,request（请求）,reponse（响应）,session,application),(page,pageContent,exception,config)</h4>
	<h5>web应用程序基于请求响应模式</h5>
	<h4>out内置对象</h4>
	<%
		out.print("床前明月光<br>");
	%>
	缓冲区大小：<%=out.getBufferSize()%>
	<br> 缓冲区剩余大小：<%=out.getRemaining()%>
	<br>是否自动清楚缓冲区：<%out.isAutoFlush(); %>
</body>
</html>