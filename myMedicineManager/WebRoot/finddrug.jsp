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
       
          <td class="tb_tl2" align="right" width="70">药品代码：</td>
          <td align="left">${df.isbn}</td>
          <td class="tb_tl2" align="right" width="70">药品名称：</td>
          <td align="left">${df.name}</td>
          
          <!-- 药品图片 -->
		  <td rowspan="7" width="350" align="center" valign="middle">
			<img src="upload/${df.image}" width="320"	height="220" />
		  </td>
        
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">剂型名称：</td>
          <td align="left">${df.pharmaceutical.pname}</td>
          <td class="tb_tl2" align="right" width="70">分类名称：</td>
          <td align="left">${df.drugclass.cname}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">药品成分：</td>
          <td align="left" colspan="3">${df.component}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">进货价：</td>
          <td align="left">${df.buyingprice}</td>
          <td class="tb_tl2" align="right" width="70">零售价：</td>
          <td align="left">${df.retailprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">库存下限：</td>
          <td align="left">${df.lowerinventory}</td>
          <td class="tb_tl2" align="right" width="70">库存上限：</td>
          <td align="left">${df.stockupperlimit}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">用法用量：</td>
          <td align="left" colspan="3">${df.usager}</td>
        </tr>
        <tr bgcolor="#FFFFFF"  height="40">
          <td class="tb_tl2" align="right" width="70">备注：</td>
          <td align="left" colspan="3">${df.remark}</td>
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
