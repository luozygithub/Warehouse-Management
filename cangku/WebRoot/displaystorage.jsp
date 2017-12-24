<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
  	<title>仓库管理</title>
  	<%
  		DbUtil db=new DbUtil();
  		List<Map<String,String>> list=db.getStorage();
  	%>
  </head>
  
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />

  <body>
  	<p align="center">
  		<font color="red" size="8">仓库信息</font>
  	</p>
  	

  	<table align="center" border="1" width="70%">
  		<tr>
  			<td>仓库号</td>
  			<td>仓库类型</td>
  			<td>仓库容量</td>
  		</tr>
  		<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
  				<tr>
	  				<td><%=one.get("storage_id") %></td>
	  				<td><%=one.get("storage_type") %></td>
	  				<td><%=one.get("storage_count") %></td>
	  				<td>
	  					<div align="center">
							<a href='changestorage.jsp?storage_id=<% out.println(one.get("storage_id")); %>'/>修改</a>
						</div>
	  				</td>
	  			</tr>
	  		<%	
  			}
  			}
  		%>
	  	
  	</table>
  	<p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="storage.jsp">返回主页</a>
  	</p>
  	
  </body>
</html>
