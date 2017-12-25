<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'change.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="ChangeDeal.jsp" style="padding-top:180px">
		<table align="center" border="1" width="70%" height=120px>
			<tr>

				<td>昵称</td>
				<td>密码</td>
				<td>姓名</td>
	<td>真实姓名</td>
				<td>电子邮箱</td>
				<td>性别</td>
				<td>生日</td>

				<td>身份证</td>
				<td>电话</td>
				<%
					String user_id = request.getParameter("user_id");
					Class.forName("com.mysql.jdbc.Driver");
					//String url="jdbc:mysql://localhost:3306;databasename=User";
					String url = "jdbc:mysql://localhost:3306/cangkuguanli";
					Connection conn = DriverManager.getConnection(url, "root", "0819");
					Statement stmt = conn.createStatement();
					String sql1 = "select * from user where user_id='" + user_id + "'";
					ResultSet rs1 = stmt.executeQuery(sql1);
					if (rs1.next()) {
				%>
			
			<tr>
				<td><input type="text" name="user_id"
					value="<%=rs1.getString("user_id")%>" /></td>
				<td><input type="text" name="user_password"
					value="<%=rs1.getString("user_password")%>" /></td>
				<td><input type="text" name="user_name"
					value="<%=rs1.getString("user_name")%>" /></td>
				<td><input type="text" name="user_nickname"
					value="<%=rs1.getString("user_nickname")%>" /></td>
				<td><input type="text" name="user_email"
					value="<%=rs1.getString("user_email")%>" /></td>
				<td><input type="text" name="user_sex"
					value="<%=rs1.getString("user_sex")%>" /></td>
				<td><input type="text" name="user_birth"
					value="<%=rs1.getString("user_birth")%>" /></td>
				<td><input type="text" name="user_idcard"
					value="<%=rs1.getString("user_idcard")%>" /></td>
				<td><input type="text" name="user_telephone"
					value="<%=rs1.getString("user_telephone")%>" /></td>
			</tr>
			<%
				}
				stmt.close();
				conn.close();
			%>
		</table>
		<center>
			<div>
				<input align="top" type="submit" value="修改" />
			</div>
		</center>
	</form>

	<br>
	<center>
		<h2>
			<a href="superuser.jsp">返回主页面</a>
		</h2>
	</center>
</body>
</html>
