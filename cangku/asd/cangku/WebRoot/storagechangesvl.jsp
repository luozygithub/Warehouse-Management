<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changedeal.jsp' starting page</title>
    
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
     <%
        	String storage_id = request.getParameter("storage_id");
        	String storage_type = new String( request.getParameter("storage_type").getBytes("UTF-8"),"UTF-8");
        	String storage_count = new String( request.getParameter("storage_count").getBytes("UTF-8"),"UTF-8");
        	String Age = request.getParameter("Age");
        	Class.forName("com.mysql.jdbc.Driver");
    	   	//String url="jdbc:mysql://localhost:3306;databasename=User";
    	   	String url="jdbc:mysql://localhost:3307/cangkuguanli";
    	   	Connection conn=DriverManager.getConnection(url,"root","root");
    	   	Statement stmt=conn.createStatement();
    		String sql="update storage set storage_type='"+storage_type+"',storage_count='"+storage_count+"' where storage_id='"+storage_id+"'";	   	
    	    stmt.executeUpdate(sql);
    	    stmt.close();
    	    conn.close();
    	    response.sendRedirect("displaystorage.jsp");
        %>
  </body>
</html>
