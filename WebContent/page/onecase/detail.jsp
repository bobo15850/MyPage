<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page
	language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="dao.ItemsDAO,entity.Items"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=utf-8"
>
<title>商品详情</title>
</head>
<%
	ItemsDAO itemsDao = new ItemsDAO();
	int id = Integer.parseInt(request.getParameter("id"));
	Items item = itemsDao.getItemById(id);//得到本页的商品
	Cookie idCookie = null;
	Items cookieItem = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length != 0) {
		for (int i = 0; i < cookies.length; i++) {
			if ("id".equals(cookies[i].getName())) {
				idCookie = cookies[i];
				break;
			}
		}
	}//得到cookies
	if (idCookie != null) {
		cookieItem = itemsDao.getItemById(Integer.parseInt(idCookie.getValue()));
	}
%>
<body>
	<div>
		<img src="../../images/<%=item.getPicture()%>" />
		<h1>商品名：<%=item.getName()%></h1>
		<h2>价格：<%=item.getPrice()%></h2>
		<h3>产地：<%=item.getCity()%></h3>
	</div>
	<div>
		<%
			if (cookieItem != null) {
		%>
		<h1>最近浏览</h1>
		<img src="../../images/<%=cookieItem.getPicture()%>" />
		<h1>商品名：<%=cookieItem.getName()%></h1>
		<h2>价格：<%=cookieItem.getPrice()%></h2>
		<h3>产地：<%=cookieItem.getCity()%></h3>
		<%
			}
		%>
	</div>
</body>
</html>