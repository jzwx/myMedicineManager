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
					库存管理
					&gt;&gt; 出库管理
					&gt;&gt; 查看所有出库信息&nbsp;<a href="drugdelivery!findcategory">【出库药品信息添加】</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="800" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">出库编号</td>
          <td class="tb_tl">出库药品名称</td>
          <td class="tb_tl">出库数量</td>
          <td class="tb_tl">出库单价</td>
           <td class="tb_tl">出库金额</td>
            <td class="tb_tl">出库日期</td>
             <td class="tb_tl">经手人</td>
          <td class="tb_tl">操作</td>
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
	        				<a href="drugdelivery!finddelivery?id=${id}">详情</a>&nbsp;&nbsp;&nbsp;<a href="drugdelivery!delete?id=${id}" onclick="return confirm('确定需要删除吗?');">删除</a>
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
