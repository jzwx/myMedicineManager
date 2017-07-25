<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
					药品信息管理
					&gt;&gt; 药品目录
					&gt;&gt; 所选药品详情
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
  		<table border="1" align="center" width="450" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
       <tr bgcolor="#FFFFFF" >
       
          <td class="tb_tl2" align="right" width="70">出库编号：</td>
          <td align="left">${dl.id}</td>
          <td class="tb_tl2" align="right" width="70">药品名称：</td>
          <td align="left" colspan="2">${dl.druginfo.name}</td>
          
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">出库数量：</td>
          <td align="left">${dl.eliverynum}</td>
          <td class="tb_tl2" align="right" width="70">出库单价：</td>
          <td align="left" colspan="2">${dl.price}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
         <td class="tb_tl2" align="right" width="70">出库金额：</td>
          <td align="left">${dl.outgoingamount}</td>
          <td class="tb_tl2" align="right" width="70">出库日期：</td>
          <td align="left" colspan="2">${dl.eliverydate}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">出库利润：</td>
          <td align="left">${dl.outprofit}</td>
          <td class="tb_tl2" align="right" width="70">经手人：</td>
          <td align="left" colspan="2">${dl.brokerage}</td>
        </tr>
        <tr bgcolor="#FFFFFF"  height="40">
        	<td width="70" colspan="5" align="center"><input type="button" value="返回" onclick="javascript:history.go(-1);"/></td>
        </tr>
      </table>
  	<br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
