<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					����ǰλ�ã�
					ҩƷ��Ϣ����
					&gt;&gt; ������λ
					&gt;&gt; �鿴���й�����λ
					&nbsp;<a href="supplymanageradd.jsp">��������λ��ӡ�</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="500" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">ID</td>
          <td class="tb_tl">������λ��</td>
          <td class="tb_tl">������λ�绰</td>
          <td class="tb_tl">������λ��ϵ��</td>
          <td class="tb_tl">����</td>
        </tr>
        	<s:iterator value="#request.supplymanagerlist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${sid}</td>
	        			<td>${sname}</td>
	        			<td>${sphone}</td>
	        			<td>${contacts}</td>
	        			<td align="center">
	        				<a href="supplymanager!details?id=${sid}">����</a>&nbsp;&nbsp;&nbsp;<a href="supplymanager!preupdate?id=${sid}">�޸�</a>&nbsp;&nbsp;&nbsp;<a href="supplymanager!delete?id=${sid}" onclick="return confirm('ȷ����Ҫɾ����?');">ɾ��</a>
	        			</td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="5">${supplymanagerpage.toolBar}</td>
	         </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
