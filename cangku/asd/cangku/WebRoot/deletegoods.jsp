<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
  	<title>产品管理</title>
  	<%
  		DbUtil db=new DbUtil();
  		List<Map<String,String>> list=db.getGoods();
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
  </head>
  	<link href="css/style.css" rel="stylesheet" type="text/css" />
  <link href="css/style2.css" rel="stylesheet" type="text/css" />
<body>
  	<p align="center">
  		<font color="red" size="8">仓库管理</font>
  	</p>
  	

  	<table align="center" border="1" width="70%">
  		<tr>
  			<td>产品号</td>
  			<td>产品数量</td>
  			<td>产品价格</td>
  			<td>产品品牌</td>
  			<td>产品描述</td>
  		</tr>
  		<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
  				<tr>
	  				<td><%=one.get("goods_id") %></td>
	  				<td><%=one.get("goods_number") %></td>
	  				<td><%=one.get("goods_price") %></td>
	  				<td><%=one.get("goods_brand") %></td>
	  				<td><%=one.get("goods_description") %></td>
	  			</tr>
	  		<%	
  			}
  			}
  		%>
	  	
  	</table>
  	<form name="form1" method="post" action="GoodsDelete">
  	  <table width="400" border="0" align="center">
        <tr>
          <td><font size="4">请输入你要删除的产品代号：
            <label>
            <input name="goods_id" type="text" id="goods_id">
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
  		<a href="goods.jsp">返回主页</a>
  	</p>
  	
</body>
</html>
