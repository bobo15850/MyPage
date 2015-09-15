<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
</head>
<body>
	<%
		String username = "";
		String password = "";
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length >= 0) {
			for (int i = 0; i < cookies.length; i++) {
				if ("username".equals(cookies[i].getName())) {
					username = URLDecoder.decode(cookies[i].getValue(), "utf-8");
				}
				if ("password".equals(cookies[i].getName())) {
					password = URLDecoder.decode(cookies[i].getValue(), "utf-8");
				}
			}
		}
	%>
	<h1>系统登陆</h1>
	<hr>
	<form name="loginForm" action="dologin.jsp?mypass=999999" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" value="<%=username%>" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password"
					value="<%=password%>" /></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="isUseCookie" checked="checked" />记住密码</td>
				<td colspan="2" align="right"><input type="submit" value="登陆" /></td>
				<td colspan="2" align="right"><input type="reset" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>