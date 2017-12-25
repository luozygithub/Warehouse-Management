<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
  	<title>用户管理</title>
  	<%
  		DbUtil db=new DbUtil();
  		List<Map<String,String>> list=db.getUser();
  	%>
  </head>
  <link href="css/style2.css" rel="stylesheet" type="text/css" />
<body>
  	<p align="center">
  		<font color="red" size="8">用户管理</font>
  	</p>
  	

  	<table align="center" border="1" width="70%">
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
  		<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
  				<tr>
	  				<td><%=one.get("user_id") %></td>
	  				<td><%=one.get("user_nickname") %></td>
	  				<td><%=one.get("user_password") %></td>
	  				<td><%=one.get("user_name") %></td>
	  				<td><%=one.get("user_idcard") %></td>
	  				<td><%=one.get("user_sex") %></td>
	  				<td><%=one.get("user_birth") %></td>
	  				<td><%=one.get("user_email") %></td>
	  				<td><%=one.get("user_telephone") %></td>
	  				<td><%=one.get("user_favourite") %></td>
	  				<td><%=one.get("user_address") %></td>
	  				<td><%=one.get("user_postcode") %></td>
	  			</tr>
	  		<%	
  			}
  			}
  		%>
	  	
  	</table>
  	<form name="form1" method="post" action="UserDelete">
  	  <table width="400" border="0" align="center">
        <tr>
          <td><font size="4">请输入你要删除的会员代号：
            <label>
            <input name="user_id" type="text" id="user_id">
            </label>
          </font></td>
        </tr>
        <tr>
          <td><label>
            <input type="submit" name="Submit" value="删除">
            <input type="reset" name="Submit2" value="重置">
          </label></td>
        </tr>
      </table>
</form>
  <p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="superuser_user.jsp">返回主页</a>
  	</p>
  	
</body>
</html>
