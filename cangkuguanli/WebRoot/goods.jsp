<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>产品管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style type="text/css">
<!--
.STYLE2 {
	font-size: 36px;
	color: #FF0000;
}
-->
</style>
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
				<li><a href="storage.jsp">仓库管理</a></li>
				<li><a href="goods.jsp">产品管理</a></li>
				<li><a href="login.jsp">退出登录</a></li>

			</ul>
		</div>
	</div>
	</nav>
	<form id="form1" name="form1" method="post" action="">
		<table width="100%" height="400" border="0" align="center">
			<tr>
				<td height="161" style="padding:0px 300px 0px 300px"><img
					src="image/bt.jpg" width="100%" height="175" /></td>
			</tr>

			<tr>
				<td colspan="2"><div align="center">
						<span class="STYLE2">产品管理</span>
					</div></td>
			</tr>
			<tr align="center">
				<td colspan="2"><a href="addgoods.jsp">产品申请</a></td>
			</tr>

			<tr align="center">
				<td colspan="2"><a href="displaygoods.jsp">产品显示</a></td>
			</tr>
			<tr align="center">
				<td><a href="deletegoods.jsp">产品删除</a></td>
			</tr>
			<tr align="center">
				<td><a href="index.jsp">返回</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
