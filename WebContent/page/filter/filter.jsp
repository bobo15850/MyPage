<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>filter学习</title>
<style type="text/css">
img {
	width: 80%;
	height: 80%;
}
</style>
</head>
<body>
	<h3>过滤器定义：一个服务器端组件可以截取用户端的请求与响应信息，并对这些信息过滤</h3>
	<hr>
	<img alt="过滤器工作原理" src="../../images/过滤器工作原理图.jpg">
	<img alt="过滤器生命周期" src="../../images/过滤器生命周期图.jpg">
	<hr>
	<!-- 过滤器的三个方法 -->
	<h1>过滤器三大方法</h1>
	<h4>（1）init()过滤器的初始化方法，Web容器创建过程中过滤器实例后将调用这个方法。这个方法中可以读取web.xml文件中过滤器的参数<br>
		（2）doFilter()方法完成实际的过滤操作。这个地方是过滤器的核心方法。当用户请求访问与过滤关联的URL时，Web容器将先调用过滤器的doFilter方法。
		FilterChain参数可以调用chain.doFilter方法，将请求传给下一个过滤器（或目标资源），或利用转发、重定向将请求转发到其他资源。<br>
		（3）destroy()Web容器在销毁过滤器实例前调用该方法，在这个方法中可以释放过滤器占用的资源。（大多数情况用不到）<br></h4>
	<hr>


	<h1>web_xml关于过滤器的配置</h1>
	<img alt="web_xml关于过滤器的配置" src="../../images/web_xml过滤器配置图.jpg">

	<h3>1. 过滤器可以改变用户请求的web资源，可以改变用户请求的路径。<br> 2. 过滤器不能直接返回数据，不能直接处理用户请求。
	</h3>
	<hr>


	<!-- 多个过滤器 -->
	<h1>多个过滤器</h1>
	<img alt="过滤器链的执行原则" src="../../images/过滤器链的执行原则图.jpg">
	<img alt="过滤器的分类" src="../../images/过滤器的分类图.jpg">
	<h3>1.response.sendRedirect()重定向的工作方式是request相当于客户端再发送一次请求<br>
		2.request.getRequestDispatcher()可以有forward和include两种方式，可以通过forward(也可以是jsp页面上的jsp：forward动作标签)和include（jsp：include动作标签）进行选择<br>
		3.死循环是因为，跳转调用的doFilter（）方法包含跳转方法，而跳转到的页面在web.xml内配置了过滤映射；<br>
	</h3>
	<hr>

	<!-- servlet3.0中的webFilter注解 -->
	<h1>webFliter注解可以替代web.xml文件中的配置</h1>
	<img alt="WebFilter的常用属性" src="../../images/WebFilter的常用属性.jpg">

	<!-- filter的实际应用 -->
	<h1>filter的实际应用</h1>
	<img alt="filter的实际应用" src="../../images/过滤器的实际应用.jpg">
	<hr>
</body>
</html>