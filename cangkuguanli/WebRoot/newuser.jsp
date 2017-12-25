<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户注册</title>
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="UserAdd">
  <table width="566" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center">会员信息</div></td>
    </tr>
    <tr>
      <td width="242"><div align="right">会员代号：</div></td>
      <td width="314"><label>
        <input name="user_id" type="text" id="user_id" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">您的昵称：</div></td>
      <td><label>
        <input name="user_nickname" type="text" id="user_nickname" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">密码：</div></td>
      <td><label>
        <input name="user_password" type="password" id="user_password" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">个人资料</div></td>
    </tr>
    <tr>
      <td><div align="right">您的姓名：</div></td>
      <td><label>
        <input name="user_name" type="text" id="user_name" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">身份证号：</div></td>
      <td><label>
        <input name="user_idcard" type="text" id="user_idcard" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">性别：</div></td>
      <td><label>
      <input name="user_sex" type="text" id="user_sex" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">出生日期：</div></td>
      <td><label>
        <input name="user_birth" type="text" id="user_birth" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">电子邮箱：</div></td>
      <td><label>
        <input name="user_email" type="text" id="user_email" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">电话：</div></td>
      <td><label>
        <input name="user_telephone" type="text" id="user_telephone" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">您的爱好：</div></td>
      <td><label>
        <input name="user_favourite" type="text" id="user_favourite" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">您的详细地址：</div></td>
      <td><label>
        <input name="user_address" type="text" id="user_address" />
      </label></td>
    </tr>
    <tr>
      <td><div align="right">邮编：</div></td>
      <td><label>
        <input name="user_postcode" type="text" id="user_postcode" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center"><a href="login.jsp">
        <input name="button" type="reset"  value="重新填写" />
        <input name="button2" type="submit"  value="提交我的申请" />
      返回</a></div></td>
    </tr>
  </table>
</form>
</body>
</html>
