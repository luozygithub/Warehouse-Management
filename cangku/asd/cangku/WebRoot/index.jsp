<%@ page pageEncoding="utf-8" import="com.zzz.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>用户登录</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
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
				<li><a href="superuser_user.jsp">用户管理</a></li>
				<li><a href="superuser_storage.jsp">仓库管理</a></li>
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
	
	
	<table width="100%" height="400" border="0">
		<tr>
			<td height="0" style="padding:0px 300px 0px 300px"><img
				src="image/bt.jpg" width="100%" height="175" /></td>

		</tr>
		
		
		
		
		</div>
		
		<tr  align="center" style="font-size:20pt">
			<td>
					尊敬的用户：<%=request.getParameter("user_id")%></td>
		</tr>
		<tr>
			<table width="500" height="162" border="0" align="center">

				<tr>
					<td><div align="center" style="font-size:25pt">
							<span >仓库管理信息系统用户系统<br/><br/></span>
						</div></td>
				</tr>
				<tr>
					<td colspan="2"><a href="storage.jsp">仓库管理</a></td>
				</tr>
				<tr>
					<td colspan="2"><a href="goods.jsp">产品管理</a></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><a href="login.jsp">退出</a></td>
				</tr>
			</table>
		</tr>
	</table>
</body>
</html>
