<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
					������
					&gt;&gt; �������
					&gt;&gt; �鿴���г�����Ϣ&nbsp;<a href="drugdelivery!findcategory">������ҩƷ��Ϣ��ӡ�</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="800" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">������</td>
          <td class="tb_tl">����ҩƷ����</td>
          <td class="tb_tl">��������</td>
          <td class="tb_tl">���ⵥ��</td>
           <td class="tb_tl">������</td>
            <td class="tb_tl">��������</td>
             <td class="tb_tl">������</td>
          <td class="tb_tl">����</td>
        </tr>
        	<s:iterator value="#request.drugdeliverylist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${id}</td>
	        			<td>${druginfo.name}</td>
	        			<td>${eliverynum}</td>
	        			<td>${price}</td>
	        			<td>${Outgoingamount}</td>
	        			<td><s:date name="eliverydate" format="yyyy-MM-dd"></s:date></td>
	        			<td>${brokerage}</td>
	        			<td align="center">
	        				<a href="drugdelivery!finddelivery?id=${id}">����</a>&nbsp;&nbsp;&nbsp;<a href="drugdelivery!delete?id=${id}" onclick="return confirm('ȷ����Ҫɾ����?');">ɾ��</a>
	        			</td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="8">${drugdeliverypage.toolBar}</td>
	         </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
