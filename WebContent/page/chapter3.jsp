<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

</body>
</html>