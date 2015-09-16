<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="dao.ItemsDAO,entity.Items"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品展示</title>
</head>
<body>
	<h1>商品展示</h1>
	<hr>
	<%
		ItemsDAO itemsDao = new ItemsDAO();
		ArrayList<Items> itemsList = itemsDao.getAllItems();
		if (itemsList != null && itemsList.size() != 0) {
			for (int i = 0; i < itemsList.size(); i++) {
				out.println(itemsList.get(i).getName());
			}
		}
	%>
</body>
</html>