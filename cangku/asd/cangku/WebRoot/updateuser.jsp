<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,com.zzz.servlet.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�����û�</title>
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
							<span class="STYLE1">�û��޸ı�</span>
						</div>
					</td>
				</tr>
				<tr>
					<td width="100">
						��Ա���ţ�
					</td>
					<td width="290">
						<label>
							<input name="user_id" type="text"  value=<%=map.get("user_id")%> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						�����ǳƣ�
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
						���룺
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
						����������
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
						���֤�ţ�
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
						�Ա�
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
						�������ڣ�
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
						�������䣺
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
						�绰��
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
						���İ��ã�
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
						�ʱࣺ
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
						������ϸ��ַ��
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
							<input type="submit" name="Submit" value="����" />
							<a href="superuser.jsp">����</a>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>