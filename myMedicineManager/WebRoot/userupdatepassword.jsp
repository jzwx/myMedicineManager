<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

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
			if(form.elements["oldPassword"].value == ""){
				alert("<bean:message key="user.oldpassword.null"/>");
				form.elements["oldPassword"].focus();
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
					&gt;&gt; 修改密码
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
					<s:iterator value="#request.passwordlist">
    <form action="user!updatepassword?id=${id}" method="post">
      <table border="0" align="center" width="450">
      	<s:hidden name="user.id" label="ID"></s:hidden>
        <tr>
          <td align="right">新密码：</td>
          <td align="left"><input type="text" name="user.password"/></td>
        </tr>
         <tr>
          <td align="right">确认密码：</td>
          <td align="left"><input type="text" name="repassword"/></td>
        </tr>
        <tr>
          <td align="center" colspan="2">
			<input type="submit" value="确认修改"/>
		  </td>
        </tr>
      </table>
    </form>
    </s:iterator>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
