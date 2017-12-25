<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
  	<title>产品管理</title>
  	<%
  		DbUtil db=new DbUtil();
  		List<Map<String,String>> list=db.getGoods();
  	%>
  	<link href="css/style2.css" rel="stylesheet" type="text/css" />
  	<link rel="stylesheet" type="text/css"
	href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </head>
  
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header" style="font-family:SimSun;">
			<img src="image/logo.jpg" style="height:50px;weight:50px;"> <a
				class="navbar-brand" href="#" style="align:right; text-color:black;">仓库管理</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="superuser.jsp">主页面</a></li>
				<li><a href="superuser_user.jsp">用户信息管理</a></li>
				<li><a href="superuser_storage.jsp">仓库查看</a></li>
				<li><a href="superuser_goods.jsp">产品查看</a></li>
				<li><a href="login.jsp">退出登录</a></li>
				
			</ul>
		</div>
	</div>
	</nav>
  	<p align="center">
  		<font color="red" size="8">产品信息</font>
  	</p>
  	<center><font color="#FF0000">超级管理员没有修改权限！请发邮件至用户通知该用户产品的非法性！</font></center>
<table align="center" border="1" width="70%">
  		<tr>
  			<td>产品号</td>
  			<td>产品数量</td>
  			<td>产品价格</td>
  			<td>产品品牌</td>
  			<td>产品描述</td>
  		</tr>
  		<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
  				<tr>
	  				<td><%=one.get("goods_id") %></td>
	  				<td><%=one.get("goods_number") %></td>
	  				<td><%=one.get("goods_price") %></td>
	  				<td><%=one.get("goods_brand") %></td>
	  				<td><%=one.get("goods_description") %></td>
	  				
	  			</tr>
	  			
	  		<%	
  			}
  			}
  		%>
</table>
  
  	<p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="superuser.jsp">返回主页</a>
  	</p>
  	
</body>
</html>
