<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>dologin</title>
</head>
<body>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="page"></jsp:useBean>
	<h1>setPoroerty动作元素</h1>
	<hr>


	<!-- 根据表单自动匹配所有元素 -->
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:setProperty property="*" name="myUsers" />
	<!-- *表示：根据表单提交过来的属性name属性在javaBean中寻找同名的属性进行赋值 -->
	用户名：<%=myUsers.getUsername()%>
	<br>密码：<%=myUsers.getPassword()%>
	<hr>


	<!-- 根据表单自动匹配部分元素 -->
	<jsp:useBean id="myUsers2" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty property="username" name="myUsers2" />
	用户名：<%=myUsers2.getUsername()%>
	<br>密码：<%=myUsers2.getPassword()%>
	<hr>


	<!-- 跟表单无关，手动设置属性值 -->
	<jsp:useBean id="myUsers3" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty property="username" name="myUsers3" value="张三" />
	<jsp:setProperty property="password" name="myUsers3" value="654321" />
	用户名：<%=myUsers3.getUsername()%>
	<br>密码：<%=myUsers3.getPassword()%>
	<hr>


	<!-- 通过Url传参数实现属性赋值 -->
	<jsp:useBean id="myUsers4" class="com.po.Users" scope="page"></jsp:useBean>
	<jsp:setProperty property="password" name="myUsers4" param="mypass" />
	用户名：<%=myUsers4.getUsername()%>
	<br>密码：<%=myUsers4.getPassword()%>
	<hr>


	<!-- getPorperty动作标签 -->
	<h1>getPorperty动作标签</h1>
	<jsp:getProperty property="username" name="myUsers"/>
	<jsp:getProperty property="password" name="myUsers"/>
</body>
</html>