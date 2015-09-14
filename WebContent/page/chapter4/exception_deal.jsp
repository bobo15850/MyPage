<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>exception_deal</title>
</head>
<body>
	<h4>必须设置isErrorPage属性为true</h4>
	异常消息是：<%=exception.getMessage()%>
	<br>异常描述字符串是：<%=exception.toString()%>
</body>
</html>