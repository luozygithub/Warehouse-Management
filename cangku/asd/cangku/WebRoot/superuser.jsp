<%@ page pageEncoding="GBK" import="com.zzz.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>超级管理员管理界面</title>

<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%
	String msg = (String) request.getAttribute("msg");
	if (msg != null) {
		out.println("<script language='javascript'>");
		out.println("alert('" + msg + "');");
		out.println("</script>");
	}
	request.removeAttribute("msg");
%>
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
				<li><a href="index.jsp">主页面</a></li>
				<li><a href="storage.jsp">用户信息管理</a></li>
				<li><a href="goods.jsp">仓库查看</a></li>
				<li><a href="goods.jsp">产品查看</a></li>
				<li><a href="login.jsp">退出登录</a></li>
				
			</ul>
		</div>
	</div>
	</nav>
<iframe name="weather_inc"
			src="http://i.tianqi.com/index.php?c=code&id=11" width="400"
			height="20" frameborder="0" marginwidth="0" marginheight="0"
			scrolling="no" align="right"></iframe>
		<p style="padding-left:10px;color:black;" align="right"></p>
		<div align="right" class="mybtn14_3">

<br>

		<p align="center"  style="font-size:20pt">
			尊敬的超级管理员：<%=request.getParameter("superuser_id")%></p>
		<table width="400" border="0" align="center" style="font-size:30pt">
		
			<tr>
				<td colspan="2" bgcolor="gray" ><div align="center">
						<span class="STYLE2">用户信息管理</span>
					</div></td>
			</tr>
			<tr>
				<td colspan="2"><a href="superuser_user.jsp">用户信息管理</a></td>
			</tr>

		</table >
		<table width="400" border="0" align="center"  style="font-size:30pt">
			<tr>
				<td colspan="2" bgcolor="gray"><div align="center">
						<span class="STYLE2">仓库管理</span>
					</div></td>
			</tr>
			<tr>
				<td colspan="2"><a href="superuser_storage.jsp">仓库查看</a></td>
			</tr>
		</table>
		<table width="400" border="0" align="center"  style="font-size:30pt">
			<tr>
				<td colspan="2" bgcolor="gray"><div align="center">
						<span class="STYLE2">产品管理</span>
					</div></td>
			</tr>
			<tr>
				<td colspan="2"><a href="superuser_goods.jsp">产品查看</a></td>
			</tr>
			<tr align="center"><td><a href="login.jsp">返回</a></td></tr>
		</table>
</body>
</html>
