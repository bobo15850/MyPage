<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用戶信息</title>
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
	用戶名：<%=username%>
	密码：<%=password%>
</body>
</html>