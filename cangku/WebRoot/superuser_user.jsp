<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*"
	import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>�û�����</title>
<%
	DbUtil db = new DbUtil();
	List<Map<String, String>> list = db.getUser();
%>
<%
	String msg = (String) request.getAttribute("msg");
	if (msg != null) {
		out.println("<script language='javascript'>");
		out.println("alert('" + msg + "');");
		out.println("</script>");
	}
	request.removeAttribute("msg");
%>


  	<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="css/style2.css" rel="stylesheet" type="text/css" />
</head>

<body>

		
		
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header" style="font-family:SimSun;">
			<img src="image/logo.jpg" style="height:50px;weight:50px;"> <a
				class="navbar-brand" href="#" style="align:right; text-color:black;">�ֿ����</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">��ҳ��</a></li>
				<li><a href="storage.jsp">�ֿ����</a></li>
				<li><a href="goods.jsp">��Ʒ����</a></li>
				<li><a href="login.jsp">�˳���¼</a></li>

			</ul>
		</div>
	</div>
</nav>
	<p align="center">
		<font color="red" size="8">�û�����</font>
	</p>



	<table class="table" >
		<thead class="thead-dark">
			<tr>
				<td>��Ա����</td>
				<td>�ǳ�</td>
				<td>����</td>
				<td>����</td>
				<td>���֤</td>
				<td>�Ա�</td>
				<td>��������</td>
				<td>��������</td>
				<td>�绰</td>
				<td>����</td>
				<td>��ַ</td>
				<td>�ʱ�</td>
			</tr>
		</thead>
			 <tbody>
			<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
			<tr>
				<td><%=one.get("user_id")%></td>
				<td><%=one.get("user_nickname")%></td>
				<td><%=one.get("user_password")%></td>
				<td><%=one.get("user_name")%></td>
				<td><%=one.get("user_idcard")%></td>
				<td><%=one.get("user_sex")%></td>
				<td><%=one.get("user_birth")%></td>
				<td><%=one.get("user_email")%></td>
				<td><%=one.get("user_telephone")%></td>
				<td><%=one.get("user_favourite")%></td>
				<td><%=one.get("user_address")%></td>
				<td><%=one.get("user_postcode")%></td>
				<td>
					<div align="center">
						<a href='userChange.jsp?user_id=<%out.println(one.get("user_id"));%>'>�޸�</a>
					</div>
				</td>		
			</tr>
				
			<%
				}
				}
			%>
		</tbody>
		</table>
		<br>
	<form name="form1" method="post" action="UserDelete">
		<table width="400" border="0" align="center">
			<tr>
				<td><font size="4">��������Ҫɾ���Ļ�Ա���ţ� <label> <input
							name="user_id" type="text" id="user_id">
					</label>
				</font></td>
			</tr>
			<tr>
				<td><label> <input type="submit" name="Submit"
						value="ɾ��"> <input type="reset" name="Submit2" value="����">
				</label></td>
			</tr>
		</table>
	</form>
	<p align="center">&nbsp;</p>

	<p align="center">
		<a href="superuser.jsp">������ҳ</a>
	</p>

</body>
</html>
