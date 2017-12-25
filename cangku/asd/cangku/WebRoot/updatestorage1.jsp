<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,com.zzz.servlet.*" errorPage=""%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>更新仓库</title>
		<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #FF0000;
}
-->
</style>
		<%
			String storage_id = (String) request.getAttribute("storage_id");
			StorageSelectOne storageselectone = new StorageSelectOne();
			Map<String, String> map = storageselectone.getOneById(storage_id);
		%>
	</head>

	<body>
		<form id="form1" name="form1" method="post" action="StorageUpdate1">
			<table width="400" border="0" align="center">
				<tr>
					<td colspan="2">
						<div align="center">
							<span class="STYLE1">仓库修改表</span>
						</div>
					</td>
				</tr>
				<tr>
					<td width="100">
						仓库号：
					</td>
					<td width="290">
						<label>
							<input name="storage_id" type="text" value=<%=map.get("storage_id")%> readonly="readonly" />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						仓库类型：
					</td>
					<td>
						<label>
							<input name="storage_type" type="text"
								value=<%=map.get("storage_type")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td>
						仓库容量：
					</td>
					<td>
						<label>
							<input name="storage_count" type="text"
								value=<%=map.get("storage_count")%> />
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>
							<input type="submit" name="Submit" value="更新" />
							<a href="superuser_storage.jsp">返回</a>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>