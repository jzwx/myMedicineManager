<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
					&gt;&gt; ҩƷĿ¼
					&gt;&gt; ��ѡҩƷ����
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
  		<table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
       <s:iterator value="#request.userlist">
       <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">ID��</td>
          <td align="left">${id}</td>
          <td class="tb_tl2" align="right" width="70">�û�����</td>
          <td align="left" colspan="2">${username}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">��ɫ��</td>
          <td align="left">
          					<c:if test="${role=='1'}">��������Ա</c:if>
	        				<c:if test="${role=='0'}">��ͨ����Ա</c:if>
	      </td>
          <td class="tb_tl2" align="right" width="70">����ʱ�䣺</td>
          <td align="left" colspan="2"><s:date name="createTime" format="yyyy-MM-dd"/></td>
        </tr>
        <tr bgcolor="#FFFFFF"  height="40">
        	<td width="70" colspan="5" align="center"><input type="button" value="����" onclick="javascript:history.go(-1);"/></td>
        </tr>
        </s:iterator>
      </table>
  	<br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
