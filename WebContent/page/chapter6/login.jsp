<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>系统登陆</h1>
	<hr>
	<form name="loginForm" action="dologin.jsp?mypass=999999" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" value="" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" value="" /></td>
			</tr>
			<tr>
				<td><input type="checkbox"/>记住密码</td>
				<td colspan="2" align="right"><input type="submit" value="登陆" /></td>
				<td colspan="2" align="right"><input type="reset" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>