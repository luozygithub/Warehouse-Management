<%@ page pageEncoding="GBK" import="java.util.*,com.zzz.util.*" import="java.util.*,com.zzz.bean.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
  	<title>�ֿ����</title>
  	<%
  		DbUtil db=new DbUtil();
  		List<Map<String,String>> list=db.getStorage();
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
  <link href="css/style2.css" rel="stylesheet" type="text/css" />
<body>
  	<p align="center">
  		<font color="red" size="8">�ֿ����</font>
  	</p>
  	

  	<table align="center" border="1" width="70%">
  		<tr>
  			<td>�ֿ����</td>
  			<td>�ֿ�����</td>
  			<td>�ֿ�����</td>
  		</tr>
  		<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Map<String, String> one = list.get(i);
			%>
  				<tr>
	  				<td><%=one.get("storage_id") %></td>
	  				<td><%=one.get("storage_type") %></td>
	  				<td><%=one.get("storage_count") %></td>
	  			<td>
	  					<div align="center">
						<a
							href="<%=request.getContextPath()%>/StorageSearch?storage_id=<% out.println(one.get("storage_id")); %>">�޸�</a>
						</div>
	  			</td>
	  			</tr>
	  		<%	
  			}
  			}
  		%>
	  	
  	</table>
  	<form name="form1" method="post" action="StorageDelete">
  	  <table width="400" border="0" align="center">
        <tr>
          <td><font size="4">��������Ҫɾ���Ĳֿ���ţ�
            <label>
            <input name="storage_id" type="text" id="storage_id">
            </label>
          </font></td>
        </tr>
        <tr>
          <td><label>
            <input type="submit" name="Submit" value="ɾ��">
            <input type="reset" name="Submit2" value="����">
          </label></td>
        </tr>
      </table>
</form>
  <p align="center">&nbsp;</p>
  	
  	<p align="center">
  		<a href="superuser.jsp">������ҳ</a>
  	</p>
  	
</body>
</html>
