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
					药品信息管理
					&gt;&gt; 药品目录
					&gt;&gt; 查看所有药品信息
					&nbsp;<a href="druginfo!findcategory">【药品信息添加】</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td colspan="9" align="center">
          
          		<table border="0" width="100%">
          			<tr>
          				<td align="left">
          					<form name="medForm" action='druginfo!find' method="post" onsubmit="return blurQuery();" class="blur_form">
          						模糊查询：<input name="keyWord" type="text" size="20"/>
          						<input type="submit" value="查询"/>
          					</form>
          				</td>
          			</tr>
          		</table>
          		
          </td>
        </tr>
        <s:actionerror/>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl">药品编号</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">药品剂型</td>
          <td class="tb_tl">药品类型</td>
          <td class="tb_tl">药品代码</td>
          <td class="tb_tl">规格</td>
          <td class="tb_tl">单位</td>
          <td class="tb_tl">药品图片</td>
          <td class="tb_tl">操作</td>
        </tr>
        		
        		   <s:iterator value="#request.druginfolist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${id}</td>
	        			<td>${name}</td>
	        			<td>
	        			${pharmaceutical.pname}
	        			</td>
	        			<td>${drugclass.cname}
						</td>
	        			<td>${isbn}</td>
	        			<td>${specifications}</td>
	        			<td>${company}</td>
	        			<td>
	        			<img src="upload/${image}" width="40" height="30"/>	
						</td>
	        			<td align="center">
	        				<a href="druginfo!finddrug?id=${id}">详情</a>&nbsp;&nbsp;<a href="druginfo!preupdate?id=${id}">修改</a>&nbsp;&nbsp;<a href="druginfo!delete?id=${id}" onclick="return confirm('确认删除吗?');">删除</a>
	        			</td>
	        		</tr>
	        	</s:iterator>
	        	
   <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="9">${druginfopage.toolBar}</td>
	         </tr>
 
      </table>
      <br>
   
	</div>
  </body>
</html>
