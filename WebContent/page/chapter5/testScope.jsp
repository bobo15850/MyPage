<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.po.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>testScope</title>
</head>
<body>
	<h1>javaBean的四种作用域范围</h1>
	<hr>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="application"></jsp:useBean>
	<jsp:getProperty property="username" name="myUsers" />
	<jsp:getProperty property="password" name="myUsers" />
	<hr>


</body>
</html>