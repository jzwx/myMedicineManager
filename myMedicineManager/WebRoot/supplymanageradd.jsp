<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
					������λ����
					&gt;&gt; ��ӹ�����λ
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
   <form action="supplymanager!add" method="post">
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">������λ����</td>
          <td align="left">
        	<input type="text" name="sm.sname"/>
          </td>
        </tr>
        
        <tr>
          <td align="right">������λ��ַ��</td>
          <td align="left">
        	<input type="text" name="sm.saddress"/>
          </td>
        </tr>
        
        <tr>
          <td align="right">������λ�绰��</td>
          <td align="left">
        	<input type="text" name="sm.sphone"/>
          </td>
        </tr>
        
         <tr>
          <td align="right">������λ��ϵ�ˣ�</td>
          <td align="left">
        	<input type="text" name="sm.contacts"/>
          </td>
        </tr>
        
        <tr>
          <td align="right">������λ��ע��</td>
          <td align="left"><textarea name="sm.remark"></textarea></td>
        </tr>
        
        <tr>
          <td align="center" colspan="2">
			<input type="submit" value="ȷ�����"/>&nbsp;&nbsp;
			<input type="button" value="����" onclick="javascript:history.go(-1);"/>
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
