<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					药品预警
					&gt;&gt; 报警管理
					&gt;&gt; 查看所有预警药品信息
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="500" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
         <tr bgcolor="#FFFFFF">
          <td class="tb_tl">库存编号</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">库存数量</td>
          <td class="tb_tl">操作</td>
        </tr>
        	   <s:iterator value="#request.callpolicelist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${id}</td>
	        			<td>${name}</td>
	        			<td>${dnum}</td>
	        			<td><a href="drugstorage!findcategory">补充药品</a></td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="4">${callpolicepage.toolBar}</td>
	         </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
