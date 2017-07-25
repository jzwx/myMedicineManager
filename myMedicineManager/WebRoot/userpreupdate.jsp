<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
					药品分类管理
					&gt;&gt; 查看所有药品类型
					&gt;&gt; 修改药品类型
				</td>
			</tr>
			<tr align="center">
				<td bgcolor="#FFFFFF" height="50">
					<br>
  <s:form action="user!update" method="post">
  	<s:hidden name="user.id" label="编号"></s:hidden>
  	<s:textfield name="user.username" label="用户名"></s:textfield>
  	<s:textfield name="user.password" label="密码"></s:textfield>
  	<s:radio list="#{'0':'普通管理员','1':'超级管理员'}" name="user.role" value="user.role" label="角色"></s:radio>
  	<s:submit value="确定修改" align="center"></s:submit>
  </s:form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
