<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" errorPage="" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>用户注册</title>

<link href="css/style2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {font-size: 16px}
.STYLE3 {font-size: 16px; color: #FF0000; }
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
<div  style="width:100%; height:90px; background:url(../image/bt.jpg) o-repeat center/cover "></div>
<table style="margin: 0 auto;">
		<tr>
			<td>
				<div class="wrap">
					<h2 class="h1">仓库管理</h2>
					<p class="h2">Warehouse management</p>
				</div>
			</td>
		</tr>

		<tr>
			<jsp:useBean id="jion" class="com.zzz.servlet.LoginServlet" />
			<td>
				<form id="form1" name="form1" method="post" action="Login" scope="application">
					<table align="center">

						<tr>
							<td>用户名：</td>
							<td>
								<label>
									<input name="user_id" type="text" id="user_id" />
								</label>
							</td>
						</tr>
						<tr>
							<td>密 &nbsp; 码： </td>
							<td>
								<label>
									<input name="user_password" type="password" id="user_password" />
								</label>
							</td>
						</tr>
						<tr>
							<td>
								<input class="submit" type="reset" name="Submit2" value="重置" />
								<a class="back" href="newuser.jsp">注册新用户</a>
								<input class="submit" type="submit" name="Submit" value="登录" />
								<a class="back" href="superuserlogin.jsp">超级管理员登录</a>
							</td>
						</tr>
						
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>


