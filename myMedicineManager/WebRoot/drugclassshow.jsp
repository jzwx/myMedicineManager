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
					&gt;&gt; ҩƷ����
					&gt;&gt; �鿴����ҩƷ����&nbsp;<a href="drugclassadd.jsp">��ҩƷ������ӡ�</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
					<s:actionerror/>
      <table border="1" align="center" width="500" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">ID</td>
          <td class="tb_tl">ҩƷ��������</td>
          <td class="tb_tl">���͹�������</td>
          <td class="tb_tl">����</td>
        </tr>
        	<s:iterator value="#request.drugclasslist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${cid}</td>
	        			<td>
	        				${cname}
	        			</td>
	        			<td>${description}</td>
	        			<td align="center">
	        				<a href="drugclass!preupdate?id=${cid}">�޸�</a>&nbsp;&nbsp;&nbsp;<a href="drugclass!delete?id=${cid}" onclick="return confirm('ȷ����Ҫɾ����?');">ɾ��</a>
	        			</td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="4">${drugclasspage.toolBar}</td>
	         </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
