<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,com.zzz.servlet.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>更新用户</title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #FF0000;
}
-->
</style>
		<%
			String user_id = (String) request.getAttribute("user_id");
			UserSelectOne userselectone = new UserSelectOne();
			Map<String, String> map = userselectone.getOneById(user_id);
		%>
	</head>

	<body>
		<form id="form1" name="form1" method="post" action="UserUpdate">
			<table width="400" border="0" align="center">
				<tr>
					<td colspan="2">
						<div align="center">
							<span class="STYLE1">用户修改表</span>
						</div>
					</td>
				</tr>
				<tr>
					<td width="100">
						会员代号：
					</td>
					<td width="290">
						<label>
							<input name="user_id" type="text"  value=<%=map.get("user_id")%> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						您的昵称：
					</td>
					<td>
						<label>
							<input name="user_nickname" type="text" 
								value=<%=map.get("user_nickname") %> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						密码：
					</td>
					<td>
						<label>
							<input name="user_password" type="password" 
								value=<%=map.get("user_password") %> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						您的姓名：
					</td>
					<td>
						<label>
							<input name="user_name" type="text" 
								value=<%=map.get("user_name") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						身份证号：
					</td>
					<td>
						<label>
							<input name="user_idcard" type="text" 
								value=<%=map.get("user_idcard") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						性别：
					</td>
					<td>
						<label>
							<input name="user_sex" type="text" 
								value=<%=map.get("user_sex") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						出生日期：
					</td>
					<td>
						<label>
							<input name="user_birth" type="text" 
								value=<%=map.get("user_birth") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						电子邮箱：
					</td>
					<td>
						<label>
							<input name="user_email" type="text" 
								value=<%=map.get("user_email") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						电话：
					</td>
					<td>
						<label>
							<input name="user_telephone" type="text" 
								value=<%=map.get("user_telephone") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						您的爱好：
					</td>
					<td>
						<label>
							<input name="user_favourite" type="text" 
								value=<%=map.get("user_favourite") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						邮编：
					</td>
					<td>
						<label>
							<input name="user_postcode" type="text" 
								value=<%=map.get("user_postcode") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						您的详细地址：
					</td>
					<td>
						<label>
							<input name="user_address" type="text" 
								value=<%=map.get("user_address") %> />
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>
							<input type="submit" name="Submit" value="更新" />
							<a href="superuser.jsp">返回</a>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>