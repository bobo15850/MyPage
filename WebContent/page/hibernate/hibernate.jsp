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

	<h1>hibernate执行流程</h1>
	<img alt="hibernate执行流程" src="../../images/hibernate执行流程.jpg">
	<h3>configuration：读取配置文档<br> sessionFactory：对象关系映射文件<br> session：操作数据库的对象，类似于JDBC中的connection<br>
		session的方法：save，delete，update，createQuery()<br> Transaction：commit<br>
		session和connection：多对一关系，一个connection服务多个session，每个session都有与之对应的connection
	</h3>
	<br>

	<h1>transaction(事物)简介</h1>
	<h3>
		1.hibrenate操作都是封装在事物中，并且默认是非自动提交方式，所以session保存对象时，必须开启事物(beginTransaction)，session执行之后必须提交(commit)事务(Transaction)，否则数据不会真正保存在数据库中<br>
		2.可用session.doWork( new Work(){<br> public void execute(Connection connection) throws SQLException{<br>
		connection.setAutoCommit(true);<br> }<br> })方法来实现<br> 3.session.flush()：输出sql语句
	</h3>
	<br>

	<h1>session(会话，相当于connection)简介</h1>
	<h3>1、获得Session的方法 <br>（1）openSession 每次使用都是打开一个新的session，使用完需要调用close方法关闭session <br>（2）getCurrentSession
		获取当前session对象，连续使用多次时，得到的session都是同一个对象.要在hibernate.cfg.xml中配置: property
		name="hibernate.current_session_context_class"> thread/property>
	</h3>
	<br>

	<h1>openSession与getCurrentSession的区别</h1>
	<h3>（1）getCurrentSession在事务提交或者回滚之后会自动关闭，而openSesssion需要你手动关闭。如果使用openSession而没有手动关闭，多次之后会导致连接池溢出！<br>
		（2）openSession每次创建新的session对象，getCurrentSession使用现有的session对象
	</h3>
	<br>

	<h1>单一主键表的主键生成策略generator=</h1>
	<h3>1.assigned：有java应用程序负责生成（手工赋值）<br> 2.native：有底层数据库自动生成标识符，如果是Mysql就是increment，如果是Oracle就是sequence，等等
	</h3>
	<br>

	<h1>hibernate映射类型</h1>
	<img alt="hibernate映射类型" src="../../images/hibernate映射类型.jpg">
	<br>
	<img alt="日期类型映射" src="../../images/日期类型映射.jpg">
	<br>
	<img alt="hibernate对象类型" src="../../images/hibernate对象类型.jpg">
	<br>
	<img alt="组建属性配置" src="../../images/组建属性配置.jpg">
	<br>

	<h1>get和load的区别</h1>
	<img alt="get和load的区别一" src="../../images/get和load的区别一.jpg">
	<img alt="get和load的区别二" src="../../images/get和load的区别二.jpg">
	<br>

	<h1>Hibernate开发的基本步骤：</h1>
	<h3>（1）编写配置文档hibernate.cfg.xml<br> （2）编写实体类<br> （3）生成对应实体类的映射文件并添加到配置文档中<br> （4）调用Hibernate API进行测试
	</h3>

	<h1>课程总结</h1>
	<img alt="hibernate课程一总结" src="../../images/hibernate课程一总结.jpg">

	<h1>一对多映射</h1>
	<img alt="set元素的常用属性" src="../../images/set元素的常用属性.jpg">
	<br>

	<h1>单向多对一关联</h1>
	<img alt="单向多对一关联" src="../../images/单向多对一关联.jpg">

	<h1>二者区别</h1>
	<h3>多对一：在多方添加一个多方属性<br>一对多：在一方添加多方集合属性<br>二者在底层数据库里的实现是相同的，都是通过设置外键关联双方
	</h3>

	<h1>inverse属性</h1>
	<img alt="inverse属性" src="../../images/inverse属性.jpg">

	<h1>cascade属性</h1>
	<img alt="cascade属性" src="../../images/cascade属性.jpg">
</body>
</html>