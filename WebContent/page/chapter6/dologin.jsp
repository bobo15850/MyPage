<%@page import="java.security.spec.PSSParameterSpec,java.net.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>登陆成功</h1>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String[] isUseCookie = request.getParameterValues("isUseCookie");
		if (isUseCookie != null && isUseCookie.length > 0) {
			String username = URLEncoder.encode(request.getParameter("username"), "utf-8");//将cookies字符集设为utf-8
			//使用URLEncoder.encode解決无法使用中文字符问题
			String password = URLEncoder.encode(request.getParameter("password"), "utf-8");

			Cookie usernameCookie = new Cookie("username", username);
			Cookie passwordCoolie = new Cookie("password", password);
			usernameCookie.setMaxAge(100000);
			passwordCoolie.setMaxAge(100000);
			response.addCookie(usernameCookie);
			response.addCookie(passwordCoolie);
		}//保存cookie
		else {
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					if ("username".equals(cookies[i].getName()) || "password".equals(cookies[i].getName())) {
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		}// 清除cookie
	%>
	<hr>
	<a href="showCookies.jsp">展示用户名和密码</a>
</body>
</html>