<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
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
					������λ����
					&gt;&gt; �鿴���й�����λ
					&gt;&gt; ����������
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
		<s:iterator value="#request.supplymanagerdetails">
  		<table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="100">ID��</td>
          <td align="left">${sid}</td>
          <td class="tb_tl2" align="right" width="100">������λ����</td>
          <td align="left">${sname}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="120">������λ��ϵ�ˣ�</td>
          <td align="left">${contacts}</td>
            <td class="tb_tl2" align="right" width="100">������λ�绰��</td>
          <td align="left">${sphone}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="100">������λ��ַ��</td>
          <td align="left" colspan="3">${saddress}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF"  height="40">
          <td class="tb_tl2" align="right" width="100">������λ��ע��</td>
          <td align="left" colspan="3">${remark}</td>
        </tr>
      </table>
      </s:iterator>
      <p align="center"><input type="button" value="����" onclick="javascript:history.go(-1);"/></p>
  	<br>
      </td>
      
			</tr>
		</table>
	</div>
  </body>
</html:html>
