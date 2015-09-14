<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp内置对象（上）</title>
</head>
<body>
	<!-- 目录简介 -->
	<h1>简介</h1>
	<h3>1.内置对象简介</h3>
	<h3>2.四种作用于域范围</h3>
	<h3>3.out</h3>
	<h3>4.request/response</h3>
	<h3>5.session</h3>
	<h3>6.application</h3>
	<h3>7.其他内置对象</h3>
	<hr>
	<h4>jsp内置对象：web容器创建的一组对象不适用new就可以使用的一组对象</h4>
	<h4>九大内置对象：常用：(out,request（请求）,reponse（响应）,session,application),(page,pageContent,exception,config)</h4>
	<h5>web应用程序基于请求响应模式</h5>

	<!-- out内置对象 -->
	<h4>out内置对象</h4>
	<%
		out.print("床前明月光<br>");
		out.print("疑是地上霜<br>");
		//out.flush();//flush之后不能clear（）；但是可以使用clearBuffer（）方法
		//out.clear();//会抛出异常
		//out.clearBuffer();//不会抛出异常
		out.print("举头望明月<br>");
		out.print("低头思故乡<br>");
	%>
	缓冲区大小：<%=out.getBufferSize()%>
	<br> 缓冲区剩余大小：<%=out.getRemaining()%>
	<br>是否自动清除缓冲区：<%
		out.isAutoFlush();
	%>

	<!-- get和post两种提交方式比较 -->
	>
	<h4>get和post两种提交方式比较</h4>
	<h1>用户登录</h1>
	<hr>
	<form action="dologin.jsp" name="loginForm" method="post">
		<!-- 如果改为get则为明文提交 -->
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="登陆" /></td>
			</tr>
		</table>
	</form>

	<!-- request内置对象 -->
	<h1>用户注册</h1>
	<hr>
	<form action="request.jsp" name="regForm" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>爱好：</td>
				<td><input type="checkbox" name="favorite" value="read" />读书 <input
					type="checkbox" name="favorite" value="music" />音乐<input
					type="checkbox" name="favorite" value="movie" />电影 <input
					type="checkbox" name="favorite" value="internet" />上网</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交" /></td>
			</tr>
		</table>
	</form>
	<hr>
	<!-- URL传参数 -->
	<a href="request.jsp?username=李四">测试URL传参数</a>
	<hr>

	<!-- response对象 -->
	<%
		/*
		 *response对象在jsp中很少使用，具有页面作用域，即访问一个页面时该页面的response对象只对这次访问有效，
		 *其他页面的response对象对该页面无效
		 */
	%>
	<h1>response对象</h1>
	<%
		out.println("我是页面内置out对象");//这句话后打印
		//out.flush();//加上这句话就会换顺序
		PrintWriter outer = response.getWriter();
		outer.println("我是response对象生成的输出流对象");//这句话先打印
		/*
		 *response对象得到的输出流比内置输出流先打印，但是如果有flush方法就不会了
		 */

		//response.sendRedirect("dologin.jsp");//请求重定向
	%>

	<!-- 请求转发与请求重定向的区别 -->
	<%
		/*
		 *请求重定向：客户端行为，response.sendRedirect();本质上等同于两次请求，前一次请求对象不会保存，地址栏url会改变 
		 *
		 *请求转发：服务器端行为：request.RequestDispatcher().forward(req,resp) 是一次请求，转发后请求对象会保存，地址栏url地址不会改变
		 *
		 *详细测试见dologin。jsp
		 */
	%>
</body>
</html>