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
	<script type="text/javascript" src="js/setdate.js"></script>
	<script type="text/javascript">
		
	</script>
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					药品目录
					&gt;&gt; 查看所有药品信息
					&gt;&gt; 药品信息添加
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="drugdelivery!add" method="post">
      <table border="0" align="center" width="300">
      	<s:select list="#request.druginfolist" listValue="name" listKey="id" label="出库药品名称" name="dl.druginfo.id"></s:select>
      	<s:textfield name="dl.eliverynum" label="出库数量"></s:textfield>
      	<s:textfield name="dl.brokerage" label="经手人"></s:textfield>
      	<s:submit value="立即添加" align="left"></s:submit>
       <input type="button" value="返回" onclick="javascript:history.go(-1);" style="position: relative;top: 97px;left:600px;"/>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
