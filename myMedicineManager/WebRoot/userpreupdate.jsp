<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ҽҩ����ϵͳ</title>

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
					����ǰλ�ã�
					ҩƷ�������
					&gt;&gt; �鿴����ҩƷ����
					&gt;&gt; �޸�ҩƷ����
				</td>
			</tr>
			<tr align="center">
				<td bgcolor="#FFFFFF" height="50">
					<br>
  <s:form action="user!update" method="post">
  	<s:hidden name="user.id" label="���"></s:hidden>
  	<s:textfield name="user.username" label="�û���"></s:textfield>
  	<s:textfield name="user.password" label="����"></s:textfield>
  	<s:radio list="#{'0':'��ͨ����Ա','1':'��������Ա'}" name="user.role" value="user.role" label="��ɫ"></s:radio>
  	<s:submit value="ȷ���޸�" align="center"></s:submit>
  </s:form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
