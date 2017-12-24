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
    <form action="goodschangesvl.jsp" style="padding-top:180px">
  	<table align="center" border="1" width="70%" height=120px>
  <tr>
  <td>产品号</td>
  <td>产品数量</td>
  <td>产品价格</td>
  <td>产品品牌</td>
   <td>产品描述</td>
    <%
    String goods_id = request.getParameter("goods_id");
    Class.forName("com.mysql.jdbc.Driver");
   	//String url="jdbc:mysql://localhost:3306;databasename=User";
   	String url="jdbc:mysql://localhost:3307/cangkuguanli";
   	Connection conn=DriverManager.getConnection(url,"root","root");
   	Statement stmt=conn.createStatement();
   	String sql1 = "select * from goods where goods_id='"+goods_id+"'";
   	ResultSet rs1 = stmt.executeQuery(sql1);
   	if( rs1.next() )
   	{
   	%>
   	<tr>
   		<td><input type="hidden" name="goods_id" value="<%= rs1.getString("goods_id") %>"/><%= rs1.getString("goods_id") %></td>
   		<td><input type="text" name="goods_number" value="<%= rs1.getString("goods_number") %>"/></td>
   		<td><input type="text" name="goods_price" value="<%= rs1.getString("goods_price") %>"/></td>
   		<td><input type="text" name="goods_brand" value="<%= rs1.getString("goods_brand") %>"/></td>
   		<td><input type="text" name="goods_description" value="<%= rs1.getString("goods_description") %>"/></td>
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