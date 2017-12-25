<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="storage" class="com.zzz.bean.Storage" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="storage"/>
<html>
  <head>
  	<title>仓库管理</title>
  	<%
  		request.getAttribute("list");
 
  	%>
  	<link href="css/style2.css" rel="stylesheet" type="text/css" />
  </head>
  
<body>
  	<p align="center">
  		<font color="red" size="8">仓库管理</font>  	</p>
  	<p align="center">条件查询</p>
	  	<form name="form1" method="post" action="StorageSearch">
  	  <label>
  	<p align="center">仓库代号：
  	  <label>
  	  <input name="storage_id" type="text" id="storage_id" value=<%=storage.getStorage_id()%>>
  	  </label>
  	</p>
  	<p align="center">仓库类型：
  	  <label>
  	  <input name="storage_type" type="text" id="storage_type" value="<%=storage.getStorage_type()%>">
  	  </label>
  	</p>
  	<p align="center">仓库容量:
  	  <label>
  	  <input name="storage_count" type="text" id="storage_count" value="<%=storage.getStorage_count()%>">
  	  </label>
  	</p>

  	    <input type="submit" name="Submit" value="检索">
      </label>
</form>
  	<p align="center">检索结果</p>
  	rs.last();%>
  	<table align="center" border="1" width="70%">
  		<tr>
  			<td>仓库代号</td>
  			<td>仓库类型</td>
  			<td>仓库容量</td>
  		</tr>

	  	
  	</table>
  	<p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="storage.jsp">返回主页</a>
  	</p>
  	
</body>
</html>
