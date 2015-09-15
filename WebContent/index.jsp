<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	//page指令：language指定页面脚本语言z
%>
<!-- html注释客户端可见 -->
<%-- jsp注释客户端不可见 --%>
<%
	//jsp脚本单行注释，客户端不可见

	/*
	 *jsp脚本多行注释，客户端不可见
	 */
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>myPage</title>
<link rel="stylesheet" href="css/head.css" type="text/css" />
</head>
<body>
	<%
		out.print("你好啊！");
	%>

	<!-- jsp变量和函数声明 -->
	<%!String str = "张三";//声明一个字符串变量
	int num = 0;

	int add(int x, int y) {
		return x + y;
	}//声明一个返回整形函数，实现两个数相加%>

	<!-- jsp表达式 -->
	<br> 你好，<%=str%>
	<br>x+y=<%=this.add(10, 8)%>

	<!-- jsp文件的生命周期 -->
	<h1>jsp文件生命周期</h1>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		str = sdf.format(new Date());
	%>
	今天是：<%=str%>

	<!-- 打印九九乘法表 -->
	<%!String printMultiTable() {
		String s = "";
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				s += i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp";
			}
			s += "<br>";
		}
		return s;
	}%>
	<h1>九九乘法表</h1>
	<%=this.printMultiTable()%>

	<!-- 打印乘法表方法二 -->
	<%!void printMultiTable2(JspWriter out) throws Exception {
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				out.print(i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp");
			}
			out.print("<br>");
		}
	}%>
	<br>
	<%
		printMultiTable2(out);
	%>
	
	<h1>章节链接</h1>
	<a href="page/chapter3/chapter3.jsp">第三章：jsp内置对象（上）</a><br>
	<a href="page/chapter4/chapter4.jsp">第四章：jsp内置对象（下）</a><br>
	<a href="page/chapter5/chapter5.jsp">第五章：javaBean使用</a><br>
	<a href="page/chapter6/chapter6.jsp">第六章：jsp状态管理</a><br>
</body>
</html>