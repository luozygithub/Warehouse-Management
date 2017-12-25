<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户登录</title>
<style type="text/css">
<!--
.STYLE4 {
	color: #FF0000
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
	<table width="927" height="344" border="0">
		<tr>
			<td width="921" height="161"><img src="F:\学习\仓库管理信息系统/标题.jpg"
				width="921" height="175" /></td>
		</tr>

		<tr>
			<td height="175"><form id="form1" name="form1" method="post"
					action="loginservlet">
					<table width="330" border="0" align="center">
						<tr>
							<td colspan="2">
								<div align="center">
									<span class="STYLE1">仓库管理信息系统</span>
								</div>
							</td>
						</tr>
						<tr>
							<td width="59">用户名：</td>
							<td width="176"><label> <input name="user_id"
									type="text" id="user_id" />
							</label></td>
						</tr>
						<tr>
							<td>密 码：</td>
							<td><label> <input name="user_password"
									type="password" id="user_password" />
							</label></td>
						</tr>
						<tr>
							<td colspan="2"><label> <input type="submit"
									name="Submit" value="登录" /> <input type="reset" name="Submit2"
									value="重置" /> <a href="newuser.jsp">注册新用户</a> <a
									href="superuser.jsp">超级管理员登录</a>
							</label></td>
						</tr>
						<tr>
							<td colspan="2"><div align="center" class="STYLE4">输入的用户名或密码错误！请重新输入！</div></td>
						</tr>
					</table>
				</form></td>
		</tr>
	</table>