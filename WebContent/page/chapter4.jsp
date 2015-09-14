<%@page import="javax.print.attribute.standard.Severity"%>
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
		销毁：<br> 1.调用session.invalidate() <br>2.session过期
		（tomcat默认超时时间是30分钟）<br>3.服务器重新启动<br>
	</h4>

	<!-- application对象 -->
	<h1>application内置对象</h1>
	<h4>application对象实现用户之间数据共享，开始与服务器启动，终止与服务器关闭，
		在用户的前后连接和不同用户之间的连接中可以对application对象的同一属性进行操作</h4>
	<h3>相当于java中的静态变量，属于整个服务器</h3>

	<!-- application对象的常用方法 -->
	<%
		application.setAttribute("city", "北京");
		application.setAttribute("postcode", "10000");
	%>
	所在城市：<%=application.getAttribute("city")%>
	邮编：<%=application.getAttribute("postcode")%>
	application的属性有：<%
		Enumeration attributes = application.getAttributeNames();
		while (attributes.hasMoreElements()) {
			out.print(attributes.nextElement() + "&nbsp;&nbsp;");
		}
	%>
	<br>jsp版本号：<%=application.getServerInfo()%>
	<hr>

	<!-- page内置对象 -->
	<h1>page内置对象</h1>
	<h4>page对象之当前jsp页面本身，类似于java中的this指针，是java.lang.object类的实例，所包含方法也相同</h4>
	<%=page.toString()%>

	<!-- pageContext内置对象 -->
	<%
		JspWriter outer = pageContext.getOut();//返回当前客户端的jspWriter流
		outer.print("我是页面out流");
	%>
	<br>
	<%
		HttpSession thisSession = pageContext.getSession();//得到页面的session对象
		out.print(thisSession == session);
	%>
	<br>
	<%
		Object thisPage = pageContext.getPage();//得到页面的page元素
		out.print(thisPage == page);
	%>
	<br>
	<%
		ServletRequest thisRequest = pageContext.getRequest();//得到页面request
		out.print(thisRequest == request);
	%>
	<br>
	<%
		ServletResponse thisResponse = pageContext.getResponse();//得到页面response
		out.print(thisResponse == response);
	%>
	<br>

	<%
		//pageContext.forward("dologin.jsp");//会跳转到另一个页面但是地址栏地址不会变化
	%>
	<%
		pageContext.include("include.jsp");
	%>
	<hr>

	<!-- config内置对象 -->
	<h1>config内置对象</h1>
	<h4>是servlet初始化时，jsp引擎向他传递消息时用的，消息包括初始化所用到的参数（通过键值对构成）以及服务器的有关信息（通过传递一个servletContext对象）</h4>

</body>
</html>