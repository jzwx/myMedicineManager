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
			<tr align="center">
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="druginfo!update" method="post" enctype="multipart/form-data">
      <table border="0" align="center" width="450">
      	<s:hidden name="df.id" label="药品编号"></s:hidden>
      	<s:hidden name="df.image"></s:hidden>
      	<s:textfield label="药品名称" name="df.name"></s:textfield>
      	<s:select list="#request.pharmaceuticallist" listValue="pname" listKey="pid" label="剂型" name="df.pharmaceutical.pid"></s:select>
      	<s:select list="#request.drugclasslist" label="分类名称" listValue="cname" listKey="cid" name="df.drugclass.cid"></s:select>
      	<s:textfield label="药品代码" name="df.isbn"></s:textfield>
      	<s:textfield label="用法用量" name="df.usager"></s:textfield>
      	<s:textfield label="药品成分" name="df.component"></s:textfield>
      	<s:textfield label="规格" name="df.specifications"></s:textfield>
      	<s:textfield label="单位" name="df.company"></s:textfield>
      	<s:textfield label="库存下限" name="df.lowerinventory"></s:textfield>
      	<s:textfield label="库存上限" name="df.stockupperlimit"></s:textfield>
      	<s:textfield label="进货价" name="df.buyingprice"></s:textfield>
      	<s:textfield label="零售价" name="df.retailprice"></s:textfield>
      	<s:textarea label="备注" name="df.remark"></s:textarea>
      	<s:file name="picpath" label="请选择图片" onchange="document.getElementById('images').src=this.value"></s:file>
      	<s:submit value="确认修改" align="left"></s:submit>
      	 <input type="button" value="返回" onclick="javascript:history.go(-1);" style="position:relative;top: 380px;left: 10px;"/>
      </table>
    </form>
     	原图片:<img alt="原图片" src="upload/${df.image}" width="60px" height="60px">
      	 新图片:<img alt="新图片" src="" id="images" width="60px" height="60px"/>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
