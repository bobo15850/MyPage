<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>servlet基础</title>
<style type="text/css">
img {
	heigth: 80%;
	width: 80%;
}
</style>
</head>
<body>
	<!-- servlet概念 -->
	<h1>servlet概念</h1>
	<h3>Servlet是JSP的前身，Servlet是在服务器上运行的小程序。一个Servlet就是一个Java类，并且可以通过“请求-响应”编程模型来访问的这个驻留在服务器内存里的Servlet程序</h3>
	<hr>

	<!-- tomcat容器等级 -->
	<h1>tomcat容器等级</h1>
	<img alt="图片" src="../../images/tomcat容器等级.jpg">
	<hr>

	<!-- servlet执行流程和生命周期-->
	<h1>servlet执行流程和生命周期</h1>
	<h3>1.客户端发送请求给服务器。<br> 2.服务器开始接受，先判断该请求的servlet实例是否存在，如果不存在先装载一个servlet类并创建实例(先执行构造方法然后执行init)。<br>
		3.如果存在则直接调用该servlet的service方法，之后进行判断是调用doGet方法还是doPost方法。<br> 4.最后判断服务是否关闭，如果关闭则调用destroy方法。<br>
	</h3>
	<br>
	<h4>1、提交超链接请求后，服务器会在web.xml中的servlet-mapping寻找对应的url(url-pattern)地址，然后得到这个servlet的名称。<br>
		2、得到名称后，在servlet中寻找名称相同的标签，然后得到处理类（servlet-class文件）<br> 3、进入servlet处理类，根据请求方式（get或者post）执行d（oGet或者doPost）方法<br></h4>
	<hr>


	<!-- tomcat装载servlet的三种方式 -->
	<h1>tomcat装载servlet的三种方式</h1>
	<h3>1.第一次请求该servlet的时候进行装载</h3>
	<h3>2.设置自动装载通过：load-on-startup设置加载的优先级</h3>
	<h3>3.当servlet文件被修改之后会自动编译并重新加载</h3>
	<hr>

	<!-- servlet与jsp内置对象之间关系 -->
	<h1>servlet与jsp内置对象之间关系</h1>
	<img alt="servlet与jsp内置对象之间关系图" src="../../images/servlet与jsp内置对象关系图.jpg">
	<hr>

	<!-- servlet路径跳转 -->
	<h1>servlet路径跳转</h1>
	<h3>1.超链接的第一个斜线表示的是服务器的根目录；<br> 2.servlet前边打斜线，表示到根目录下打开servlet项目<br>
		3.利用request.getContextpath()，其代表项目的根目录<br> 4.url-pattern处的斜线代表项目的根目录,必须添加<br>
		5.response.sendRedirect当前路径是ServletPathDirection/servlet/<br>6.服务器内部跳转，斜线代表项目根目录
	</h3>
	<hr>


	<!-- servlet初始化参数设置 -->
	<h1>servlet初始化参数设置</h1>
	<h3>1.web.xml中配置参数语句(可以配置多对)：<br> init-param<br> param-name /param-name<br> param-value
		/param-value<br> /init-param
	</h3>
	<h3>2.获取初始化参数用：ServletConfig里面的getInitparameter()</h3>
	<hr>


	<!-- mvc设计模型 -->
	<h1>mvc设计模型</h1>
	<img alt="mvc设计模型图" src="../../images/mvc设计模型图.jpg">
	<hr>


	<!-- 两大模型 -->
	<h1>两大模型</h1>
	<img alt="模型一" src="../../images/model1.jpg">
	<img alt="模型二" src="../../images/model2.jpg">
</body>
</html>