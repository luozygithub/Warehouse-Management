<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
    <form action="storagechangesvl.jsp" style="padding-top:180px">
  	<table align="center" border="1" width="70%" height=120px>
  <tr>
  <td>仓库号</td>
  <td>仓库类型</td>
  <td>仓库容量</td>

    <%
    String storage_id = request.getParameter("storage_id");
    Class.forName("com.mysql.jdbc.Driver");
   	//String url="jdbc:mysql://localhost:3306;databasename=User";
   	String url="jdbc:mysql://localhost:3307/cangkuguanli";
   	Connection conn=DriverManager.getConnection(url,"root","root");
   	Statement stmt=conn.createStatement();
   	String sql1 = "select * from storage where storage_id='"+storage_id+"'";
   	ResultSet rs1 = stmt.executeQuery(sql1);
   	if( rs1.next() )
   	{
   	%>
   	<tr>
   		<td><input type="hidden" name="storage_id" value="<%= rs1.getString("storage_id") %>"/><%= rs1.getString("storage_id") %></td>
   		<td><input type="text" name="storage_type" value="<%= rs1.getString("storage_type") %>"/></td>
   		<td><input type="text" name="storage_count" value="<%= rs1.getString("storage_count") %>"/></td>

   	</tr>
   	<%	
   	}
   	stmt.close();
   	conn.close();
   	
    %>
  
    </table>
     <center><div><input align="top" type="submit" value="修改"/></div> </center>
    </form>
  </body>
</html>