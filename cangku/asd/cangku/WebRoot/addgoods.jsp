<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<title>增加产品</title>
<link href="css/style2.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #FF0000;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="get" action="GoodsAdd">
  <table width="400" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center"><span class="STYLE1">产品申请表</span></div></td>
    </tr>
    <tr>
      <td width="100">产品号：</td>
      <td width="290"><label>
        <input name="goods_id" type="text" id="goods_id" />
      </label></td>
    </tr>
    <tr>
      <td>产品数量：</td>
      <td><label>
        <input name="goods_number" type="text" id="goods_number" />
      </label></td>
    </tr>
    <tr>
      <td>产品价格：</td>
      <td><label>
        <input name="goods_price" type="text" id="goods_price" />
      </label></td>
    </tr>
	<tr>
      <td>产品品牌：</td>
      <td><label>
        <input name="goods_brand" type="text" id="goods_brand" />
      </label></td>
    </tr>
    <tr>
      <td>产品描述：</td>
      <td><label>
        <textarea name="goods_description" id="goods_description"></textarea>
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><label>
        <input type="submit" name="Submit" value="申请" />
        <a href="goods.jsp">返回</a>
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
