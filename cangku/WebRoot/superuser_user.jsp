<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*"
	import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>用户管理</title>
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
	<p align="center">
		<font color="red" size="8">用户管理</font>
	</p>



	<table class="table" >
		<thead class="thead-dark">
			<tr>
				<td>会员代号</td>
				<td>昵称</td>
				<td>密码</td>
				<td>姓名</td>
				<td>身份证</td>
				<td>性别</td>
				<td>出生日期</td>
				<td>电子邮箱</td>
				<td>电话</td>
				<td>爱好</td>
				<td>地址</td>
				<td>邮编</td>
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
						<a href='userChange.jsp?user_id=<%out.println(one.get("user_id"));%>'>修改</a>
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
				<td><font size="4">请输入你要删除的会员代号： <label> <input
							name="user_id" type="text" id="user_id">
					</label>
				</font></td>
			</tr>
			<tr>
				<td><label> <input type="submit" name="Submit"
						value="删除"> <input type="reset" name="Submit2" value="重置">
				</label></td>
			</tr>
		</table>
	</form>
	<p align="center">&nbsp;</p>

	<p align="center">
		<a href="superuser.jsp">返回主页</a>
	</p>

</body>
</html>
