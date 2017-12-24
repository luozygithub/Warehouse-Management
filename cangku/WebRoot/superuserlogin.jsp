<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>超级管理员</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
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
	<table width="100%" height="400" border="0">
		<tr>
			<td height="0" style="padding:0px 300px 0px 300px"><img
				src="image/bt.jpg" width="100%" height="175" /></td>

		</tr>
 
  
  <tr>
    <td height="118"><form id="form1" name="form1" method="post" action="SuperuserLogin" scope="application">
			<table width="330" border="0" align="center">
				<tr>
					<td colspan="2">
						<div align="center">
							<span class="STYLE1">超级管理员管理仓库系统</span>						</div>					</td>
				</tr>
				<tr>
					<td width="59">
						
				  用户名：									</td>
					<td width="168">
						<label>
							<input name="superuser_id" type="text" id="superuser_id" />
				  </label>					</td>
				</tr>
				<tr>
					<td>
					
							密 码：									</td>
					<td>
						<label>
							<input name="superuser_password" type="password" id="superuser_password" />
						</label>					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>
						
								<input type="submit" name="Submit" value="登录" />

								<input type="reset" name="Submit2" value="重置" />
								<a href="login.jsp">返回</a>
		</label>
		</td>
		</tr>
		</table>
		</form></td>
  </tr>
</table>
</body>
</html>
