<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,com.zzz.servlet.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>���²�Ʒ</title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #FF0000;
}
-->
</style>
		<%
			String goods_id = (String) request.getAttribute("goods_id");
			GoodsSelectOne goodsselectone = new GoodsSelectOne();
			Map<String, String> map = goodsselectone.getOneById(goods_id);
		%>
	</head>

	<body>
		<form id="form1" name="form1" method="post" action="GoodsUpdate">
			<table width="400" border="0" align="center">
				<tr>
					<td colspan="2">
						<div align="center">
							<span class="STYLE1">�ֿ��޸ı�</span>
						</div>
					</td>
				</tr>
				<tr>
					<td width="100">
						��Ʒ�ţ�
					</td>
					<td width="290">
						<label>
							<input name="goods_id" type="text" value=<%=map.get("goods_id")%> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ������
					</td>
					<td>
						<label>
							<input name="goods_number" type="text"
								value=<%=map.get("goods_number")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ�۸�
					</td>
					<td>
						<label>
							<input name="goods_price" type="text"
								value=<%=map.get("goods_price")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						��ƷƷ�ƣ�
					</td>
					<td>
						<label>
							<input name="goods_brand" type="text"
								value=<%=map.get("goods_brand")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						��Ʒ������
					</td>
					<td>
						<label>
							<input name="goods_description" type="text"
								value=<%=map.get("goods_description")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>
							<input type="submit" name="Submit" value="����" />
							<a href="goods.jsp">����</a>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>