<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ҽҩ����ϵͳ</title>

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
					����ǰλ�ã�
					ҩƷĿ¼
					&gt;&gt; �鿴����ҩƷ��Ϣ
					&gt;&gt; ҩƷ��Ϣ���
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="drugstorage!add" method="post" enctype="multipart/form-data">
      <table border="0" align="center" width="300">
      	<s:select list="#request.druginfollist" listValue="name" listKey="id" label="ҩƷ����" name="ds.druginfo.id"></s:select>
      	<s:textfield name="ds.Specifications" label="ҩƷ���"></s:textfield>
      	<s:textfield name="ds.Drugnumber" label="ҩƷ����"></s:textfield>
      	<s:select list="#request.supplymanagerlist" listValue="sname" listKey="sid" label="������λ����" name="ds.supplymanager.sid"></s:select>
      	<s:textfield name="ds.storagenum" label="�������"></s:textfield>
      	<s:textfield name="ds.buyingprice" label="������"></s:textfield>
      	<s:textfield name="ds.retailprice" label="���ۼ�"></s:textfield>
      	<s:textfield name="ds.Wholesaleprice" label="������"></s:textfield>
      	<s:textfield name="ds.startdate" label="�������" onfocus="HS_setDate(this)"></s:textfield>
      	<s:textfield name="ds.enddate" label="ʧЧ����" onfocus="HS_setDate(this)"></s:textfield>
      	<s:textfield name="ds.brokerage" label="������"></s:textfield>
      	<s:submit value="�������" align="left"></s:submit>
       <input type="button" value="����" onclick="javascript:history.go(-1);" style="position: relative;top: 295px;left:600px;"/>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
