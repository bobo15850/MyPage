<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Jsp状态管理</title>
</head>
<body>
	<!-- http协议的无状态性 -->
	<h1>http协议的无状态性</h1>
	<h3>服务器无法判断浏览器是否以前访问过该服务器，都会以为是第一次访问</h3>
	<hr>


	<!-- cookies简介 -->
	<h1>cookies简介</h1>
	<h3>保存用户状态的两种机制：session，cookies</h3>
	<h5>二者对比</h5>
	<h5>session在服务器端存储信息，session保存的是object类型，随着会话结束销毁保存的数据，保存重要的信息，安全性高</h5>
	<h5>cookie在客戶端保存用戶信息，cookie保存的是String类型，cookie可以长期保存在客户端，保存不重要的用户信息</h5>
</body>
</html>