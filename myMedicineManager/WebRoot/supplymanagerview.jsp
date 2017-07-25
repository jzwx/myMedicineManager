<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
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
					供货单位管理
					&gt;&gt; 查看所有供货单位
					&gt;&gt; 供货单详情
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
		<s:iterator value="#request.supplymanagerdetails">
  		<table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="100">ID：</td>
          <td align="left">${sid}</td>
          <td class="tb_tl2" align="right" width="100">供货单位名：</td>
          <td align="left">${sname}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="120">供货单位联系人：</td>
          <td align="left">${contacts}</td>
            <td class="tb_tl2" align="right" width="100">供货单位电话：</td>
          <td align="left">${sphone}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="100">供货单位地址：</td>
          <td align="left" colspan="3">${saddress}</td>
        </tr>
        
        <tr bgcolor="#FFFFFF"  height="40">
          <td class="tb_tl2" align="right" width="100">供货单位备注：</td>
          <td align="left" colspan="3">${remark}</td>
        </tr>
      </table>
      </s:iterator>
      <p align="center"><input type="button" value="返回" onclick="javascript:history.go(-1);"/></p>
  	<br>
      </td>
      
			</tr>
		</table>
	</div>
  </body>
</html:html>
