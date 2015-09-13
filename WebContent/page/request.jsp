<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request内置对象</h1>
	<%
		request.setCharacterEncoding("utf-8");//解决中文乱码问题，无法解决URL传递参数产生的中文乱码问题
		request.setAttribute("password", "123456");
	%>
	用戶名：<%=request.getParameter("username")%>
	<br> 爱好：<%
		String[] favorites = request.getParameterValues("favorite");
		if (favorites != null && favorites.length != 0) {
			for (int i = 0; i < favorites.length; i++) {
				out.print(favorites[i] + "&nbsp;&nbsp;");
			}
		}
	%>
	<!-- 测试setAttribute和getAttribute -->
	<br> 密码：<%=request.getAttribute("password")%>

	<!-- 测试request的其他方法 -->
	<br> 请求体的MIME类型:<%=request.getContentType()%>
	<br> 协议类型和版本号:<%=request.getProtocol()%>
	<br> 服务器主机名：<%=request.getServerName()%>
	<br> 服务器的端口号：<%=request.getServerPort()%>
	<br> 请求文件长度：<%=request.getContentLength()%>
	<br> 请求客户端IP地址：<%=request.getRemoteAddr()%>
	<br> 请求的真实路径：<%=request.getRealPath("/")%><!-- 该方法已过期 -->
	<br> 请求的上下文路径：<%=request.getContextPath()%>
</body>
</html>