<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*"
	import="java.util.*,com.zzz.bean.*"%>



<html>
<head>
<title>仓库管理</title>
<%
	DbUtil db = new DbUtil();
	List<Map<String, String>> list = db.getGoods();
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
			<td><%=one.get("goods_id")%></td>
			<td><%=one.get("goods_number")%></td>
			<td><%=one.get("goods_price")%></td>
			<td><%=one.get("goods_brand")%></td>
			<td><%=one.get("goods_description")%></td>
			<td>
				<div align="center">

				<a href='changegoods.jsp?goods_id=<% out.println(one.get("goods_id")); %>'/>修改</a>
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
		<a href="goods.jsp">返回主页</a>
	</p>

</body>
</html>
