<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="storage" class="com.zzz.bean.Storage" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="storage"/>
<html>
  <head>
  	<title>�ֿ����</title>
  	<%
  		request.getAttribute("list");
 
  	%>
  	<link href="css/style2.css" rel="stylesheet" type="text/css" />
  </head>
  
<body>
  	<p align="center">
  		<font color="red" size="8">�ֿ����</font>  	</p>
  	<p align="center">������ѯ</p>
	  	<form name="form1" method="post" action="StorageSearch">
  	  <label>
  	<p align="center">�ֿ���ţ�
  	  <label>
  	  <input name="storage_id" type="text" id="storage_id" value=<%=storage.getStorage_id()%>>
  	  </label>
  	</p>
  	<p align="center">�ֿ����ͣ�
  	  <label>
  	  <input name="storage_type" type="text" id="storage_type" value="<%=storage.getStorage_type()%>">
  	  </label>
  	</p>
  	<p align="center">�ֿ�����:
  	  <label>
  	  <input name="storage_count" type="text" id="storage_count" value="<%=storage.getStorage_count()%>">
  	  </label>
  	</p>

  	    <input type="submit" name="Submit" value="����">
      </label>
</form>
  	<p align="center">�������</p>
  	rs.last();%>
  	<table align="center" border="1" width="70%">
  		<tr>
  			<td>�ֿ����</td>
  			<td>�ֿ�����</td>
  			<td>�ֿ�����</td>
  		</tr>

	  	
  	</table>
  	<p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="storage.jsp">������ҳ</a>
  	</p>
  	
</body>
</html>
