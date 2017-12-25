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
        	String user_id = request.getParameter("user_id");
        	String user_password = new String( request.getParameter("user_password").getBytes("UTF-8"),"UTF-8");
        	String user_name = new String( request.getParameter("user_name").getBytes("UTF-8"),"UTF-8");
        	String user_nickname = new String( request.getParameter("user_nickname").getBytes("UTF-8"),"UTF-8");
        	String user_sex = new String( request.getParameter("user_sex").getBytes("UTF-8"),"UTF-8");
        	String user_email = request.getParameter("user_email");
        		String user_birth = request.getParameter("user_birth");
        			String user_idcard = request.getParameter("user_idcard");
        				String user_telephone = request.getParameter("user_telephone");
        	Class.forName("com.mysql.jdbc.Driver");
    	   	//String url="jdbc:mysql://localhost:3306;databasename=User";
    	   	String url="jdbc:mysql://localhost:3307/cangkuguanli";
    	   	Connection conn=DriverManager.getConnection(url,"root","root");
    	   	Statement stmt=conn.createStatement();
    		String sql="update user set user_id='"+user_id+"',user_password='"+user_password+"',user_name='"+user_name+"' ,user_nickname='"+user_nickname+"' ,user_sex='"+user_sex+"',user_email='"+user_email+"',user_birth='"+user_birth+"',user_telephone='"+user_telephone+"',user_idcard='"+user_idcard+"' where user_id='"+user_id+"'";	   	
    	    stmt.executeUpdate(sql);
    	    stmt.close();
    	    conn.close();
    	    response.sendRedirect("superuser_user.jsp");
        %>
  </body>
</html>
