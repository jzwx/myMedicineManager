<%@ page language="java" pageEncoding="GBK"%>
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
	<script type="text/javascript">
		function blurQuery(){
			var form = document.forms["medForm"];
			if(form.elements["keyWord"].value == ""){
				alert("<bean:message key="query.keyWord.null" />");
				form.elements["keyWord"].focus();
				return false;
			}
		}
	</script>
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					库存查询
					&gt;&gt; 入库查询
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="800" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td colspan="9" align="center">
          
          		<table border="0" width="100%">
          			<tr>
          				<td align="left">
          					<form name="medForm" action='drugstorage!find' method="post" onsubmit="return blurQuery();" class="blur_form">
          						精确查询：<input name="keyWord" type="text" size="20"/>
          						<input type="submit" value="查询"/>
          					</form>
          				</td>
          			</tr>
          		</table>
          		
          </td>
        </tr>
        <s:actionerror/>
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">入库编号</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">药品规格</td>
          <td class="tb_tl">药品批号</td>
           <td class="tb_tl">供货单位编码</td>
            <td class="tb_tl">入库日期</td>
             <td class="tb_tl">经手人</td>
          <td class="tb_tl">操作</td>
        </tr>
        		
        		   <s:iterator value="#request.drugstoragechecklist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${id}</td>
	        			<td>${druginfo.name}</td>
	        			<td>${Specifications}</td>
	        			<td>${Drugnumber}</td>
	        			<td>${supplymanager.sname}</td>
	        			<td><s:date name="startdate" format="yyyy-MM-dd"></s:date></td>
	        			<td>${brokerage}</td>
	        			<td align="center">
	        				<a href="drugstorage!findstorage?id=${id}">详情</a>&nbsp;&nbsp;&nbsp;<a href="drugstorage!delete?id=${id}" onclick="return confirm('确定需要删除吗?');">删除</a>
	        			</td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="8">${drugstoragecheckpage.toolBar}</td>
	         </tr>
 
      </table>
      <br>
   
	</div>
  </body>
</html>
