<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp内置对象（下）</title>
</head>
<body>
	<!-- session内置对象 -->
	<h1>session内置对象</h1>
	<h3>session定义：表示客户端和服务器的一次对话（进入网站到浏览器关闭所经过的这段时间，一个特定的时间概念）</h3>
	<h4>特点：服务器中保存着不同用户的session,每一个用户对应一个session，在不同页面之间切换时保存用户状态的机制，是httpSession类的实例</h4>
	<hr>

	<!-- session常用方法 -->
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		Date d = new Date(session.getCreationTime());//得到session创建时间
		session.setAttribute("username", "zhangsan");
		session.setAttribute("password", "123456");
	%>
	<br>session创建时间：<%=sdf.format(d)%>
	<br>session的ID编号：<%=session.getId()%>
	<br>从session中获取属性：用户名：<%=session.getAttribute("username")%>
	<br>session中保存的属性：<%
		String names[] = session.getValueNames();
		if (names != null) {
			for (int i = 0; i < names.length; i++) {
				out.print(names[i] + "&nbsp;&nbsp;");
			}

		}
	%>
	<h3>session在不同的页面间可以共享，但是有生存周期</h3>
	<a href="sessionJump.jsp" target="blank">跳转到另一个页面</a>
	<h3>测试session最大生存周期</h3>
	<%
		//session.setMaxInactiveInterval(10);//设置最大生存时间为10秒,tomcat默认超时时间为30分钟
	%>
	<hr>

	<!-- session生命周期 -->

	<h1>session生命周期</h1>
	<h4>创建：客户端第一次访问某个jsp或者servlet的时候创建sessionId，每次客户端向服务器发送请求时携带sessionId服务器对此Id进行校验</h4>
	<h4>
		活动： <br>1：通过超链接打开该网站页面属于同一次会话 <br>2.只要当前页面没有完全关闭，重新打开新的浏览器窗口访问同一网站属于同一次会话
		<br>3.除非当前所有页面都关闭后再重新访问某个jsp或者servlet将会创建新的会话，但是原有的sessionId还会存在于服务器端，只是再有没有客户端携带他到服务器<br>
	</h4>
	<h4>
		销毁：<br> 1.调用session.invalidate() <br>2.session过期 <br>3.服务器重新启动<br>
	</h4>
</body>
</html>