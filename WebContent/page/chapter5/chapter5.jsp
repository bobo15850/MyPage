<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.po.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>chapter5</title>
</head>
<body>
	<!-- 使用普通方式创建javaBean实例 -->
	<h1>使用普通方式创建javaBean实例</h1>
	<%
		Users user = new Users();
		user.setUsername("admin");
		user.setPassword("123456");
	%>
	用户名：<%=user.getUsername()%><br> 密码：<%=user.getPassword()%>


	<!-- 使用jsp动作标签使用javaBean -->
	<h1>使用jsp动作标签使用javaBean</h1>
	<h3>
		1.userBean动作<br>2.getProperty<br>3.setProperty
	</h3>
	<hr>
	<h2>useBean</h2>
	<h3>作用：在jsp页面中实例化或者指定范围内使用javaBean</h3>

	<jsp:useBean id="user2" class="com.po.Users" />
	用户名：<%=user2.getUsername()%><br> 密码：<%=user2.getPassword()%>


	<!-- javaBean四个作用域范围 -->
	<h1>javaBean四个作用域范围</h1>
	<h3>有四种作用域范围：page,request,session,application；在scope中指定</h3>
	<h5>参见testScope.jsp</h5>
</body>
</html>