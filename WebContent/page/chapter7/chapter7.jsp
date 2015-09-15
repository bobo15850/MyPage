<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- include指令 -->
	<h1>include指令</h1>
	<%@ include file="date.jsp"%>
	<hr>


	<!-- include动作 -->
	<h1>include动作</h1>
	<jsp:include page="date.jsp" />
	<hr>


	<!-- include指令与include动作之间比较 -->
	<h1>include指令与include动作之间比较(jsp面试重点)</h1>
	<table border="1px">
		<tr>
			<td>二者比较</td>
			<td>include指令</td>
			<td>include动作</td>
		</tr>
		<tr>
			<td>语法格式</td>
			<td>%@ include file=""</td>
			<td>jsp:include page=""</td>
		</tr>
		<tr>
			<td>发生作用时间</td>
			<td>页面转换期间</td>
			<td>请求期间</td>
		</tr>
		<tr>
			<td>包含内容</td>
			<td>文件的实际内容</td>
			<td>页面的输出</td>
		</tr>
		<tr>
			<td>准换成的servlet</td>
			<td>主页面和包含页面转换成一个servlet</td>
			<td>主页面和包含页面转换成独立的servlet</td>
		</tr>
		<tr>
			<td>编译时间</td>
			<td>较慢--资源必须被解析</td>
			<td>较快</td>
		</tr>
		<tr>
			<td>执行时间</td>
			<td>稍快</td>
			<td>较慢--每次资源必须被解析</td>
		</tr>

	</table>
</body>
</html>