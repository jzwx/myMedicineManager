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
  		<table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
       <tr bgcolor="#FFFFFF" >
       
          <td class="tb_tl2" align="right" width="70">药品名称：</td>
          <td align="left">${ds.druginfo.name}</td>
          <td class="tb_tl2" align="right" width="70">药品规格：</td>
          <td align="left" colspan="2">${ds.specifications}</td>
          
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">药品批号：</td>
          <td align="left">${ds.drugnumber}</td>
          <td class="tb_tl2" align="right" width="70">供货单位：</td>
          <td align="left" colspan="2">${ds.supplymanager.sname}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
         <td class="tb_tl2" align="right" width="70">入库数量：</td>
          <td align="left">${ds.storagenum}</td>
          <td class="tb_tl2" align="right" width="70">进货价：</td>
          <td align="left" colspan="2">${ds.buyingprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">零售价：</td>
          <td align="left">${ds.retailprice}</td>
          <td class="tb_tl2" align="right" width="70">批发价：</td>
          <td align="left" colspan="2">${ds.wholesaleprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">入库日期：</td>
          <td align="left"><s:date name="ds.startdate" format="yyyy-MM-dd"></s:date></td>
          <td class="tb_tl2" align="right" width="70">失效日期：</td>
          <td align="left" colspan="2"><s:date name="ds.enddate" format="yyyy-MM-dd"></s:date></td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">经手人：</td>
          <td align="left" colspan="4">${ds.brokerage}</td>
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
