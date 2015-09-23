<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>hibernate</title>
<style type="text/css">
img {
	width: 80%;
	height: 80%;
}
</style>
</head>
<body>
	<h1>什么是ORM?</h1>
	<h3>object relationShip mapping;对象/关系/映射</h3>
	<br>

	<h1>sql有什么缺点?</h1>
	<h3>（1）不同数据库使用的SQL语法不同 eg：PL/SQL与T/SQL<br> （2）同样的功能在不同的数据库中有不同的实现方式。 eg：分页SQL<br>
		（3）程序过分依赖SQL对程序的移植及扩展，维护等带来很大的麻烦
	</h3>
	<br>

	<h1>什么是hibernate？</h1>
	<h3>（1）Hibernate是Javs领域的一款开源的ORM框架技术 <br>（2）Hibernate对JDBC进行了非常轻量级的对象封装
	</h3>
	<br>

	<h1>其他主流ORM框架技术:</h1>
	<h3>（1）MyBatis：前身就是著名的iBatis <br>（2）Toplink：后被Oracle收购，并重新包装为Oracle AS TopLink <br>（3）EJB：本身就是JAVAEE的规范（重量级）
	</h3>
	<br>

	<H1>hibernate_cfg_xml基础配置</H1>
	<img alt="hibernate_cfg_xml基础配置" src="../../images/hibernate_cfg_xml基础配置.jpg">
	<br>

	<h1>hibernate_cfg_xml常用配置</h1>
	<img alt="hibernate_cfg_xml常用配置" src="../../images/hibernate_cfg_xml常用配置.jpg">
	<br>

	<h1>JavaBean的设计原则</h1>
	<h3>1.必须是公有的类 <br>2.提供公有的不带参数的默认的构造方法 <br>3.属性私有<br> 4.属性setter/getter封装
	</h3>
	<br>
</body>
</html>