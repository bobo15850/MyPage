<%@page import="java.util.ArrayList"%>
<%@ page
	language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
%>
<%@page import="dao.ItemsDAO,entity.Items"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=utf-8"
>
<title>商品展示</title>
</head>
<body>
	<h1>商品展示</h1>
	<hr>
	<form>
		<table>
			<tr>
				<%
					ItemsDAO itemsDao = new ItemsDAO();
					ArrayList<Items> itemsList = itemsDao.getAllItems();
					if (itemsList != null && itemsList.size() != 0) {
						for (int i = 0; i < itemsList.size(); i++) {
							Items item = itemsList.get(i);
				%>
				<td>
					<a href="detail.jsp?id=<%=item.getId()%>">
						<img
							src="../../images/<%=item.getPicture()%>"
							style="height: 200px; width: 200px;"
							alt="<%=item.getPicture()%>"
						/>
						<%=item.getName()%>
						&nbsp;&nbsp;
						<%=item.getPrice()%>
					</a>
				</td>
				<%
					}
					}
				%>
			</tr>
		</table>
	</form>
</body>
</html>