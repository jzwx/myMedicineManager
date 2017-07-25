<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title><bean:message key="system.category.manage.user.add"/></title>

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
					系统管理
					&gt;&gt; 添加管理员
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50" align="center">
					<br>
					添加成功&nbsp;&nbsp;<a href="user!findAll">返回列表</a>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
