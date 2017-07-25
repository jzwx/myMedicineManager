<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>医药管理系统</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="images/styles.css">
	<script type="text/javascript">
		function save(){
			var form = document.forms["userForm"];
			if(form.elements["username"].value == ""){
				alert("<bean:message key="user.username.null"/>");
				form.elements["username"].focus();
				return false;
			}
			if(form.elements["password"].value == ""){
				alert("<bean:message key="user.password.null"/>");
				form.elements["password"].focus();
				return false;
			}
			if(form.elements["rePassword"].value == ""){
				alert("<bean:message key="user.repassword.null"/>");
				form.elements["rePassword"].focus();
				return false;
			}
			if(form.elements["rePassword"].value != form.elements["password"].value){
				alert("<bean:message key="user.password.error"/>");
				return false;
			}
		}
	</script>
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					用户管理
					&gt;&gt; 用户添加
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
   <form action="user!add" method="post">
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">用户名：</td>
          <td align="left">
        	<input type="text" name="user.username"/>
          </td>
        </tr>
        <tr>
          <td align="right">设置密码：</td>
          <td align="left"><input type="text" name="user.password"/></td>
        </tr>
        <tr>
          <td align="right">确认密码：</td>
          <td align="left"><input type="text" name="repassword"/></td>
        </tr>
         <tr>
          <td align="right">设置角色：</td>
          <td align="left">
          	<input name="user.role" type="radio" value="0" checked>普通管理员
          	<input name="user.role" type="radio" value="1">超级管理员</td>
          </td>
        </tr>
        <tr>
          <td align="center" colspan="2">
			<input type="submit" value="立即添加"/>&nbsp;&nbsp;
			<input type="button" value="返回" onclick="javascript:history.go(-1);"/>
		  </td>
        </tr>
      </table>
    <form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
