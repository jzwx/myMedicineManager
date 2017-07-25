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
					供货单位管理
					&gt;&gt; 添加供货单位
				</td>
			</tr>
			<tr align="center">
				<td bgcolor="#FFFFFF" height="50">
					<br>
					
   <s:form action="supplymanager!update" method="post">
   
   	<s:hidden name="sm.sid" label="编号"></s:hidden>
   	<s:textfield name="sm.sname" label="供货单位名"></s:textfield>
   	<s:textarea name="sm.saddress" label="供货单位地址"></s:textarea>
   	<s:textfield name="sm.sphone" label="供货单位电话"></s:textfield>
   	<s:textfield name="sm.contacts" label="供货单位联系人"></s:textfield>
   	<s:textarea name="sm.remark" label="供货单位备注"></s:textarea>
   	<s:submit value="确认添加" align="center"></s:submit>
    </s:form>
    
    <input type="button" value="返回" onclick="javascript:history.go(-1);" style="position:relative;top: -36px;left: 100px"/>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
