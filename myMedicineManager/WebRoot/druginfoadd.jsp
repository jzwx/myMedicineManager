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
    <form action="druginfo!add" method="post" enctype="multipart/form-data">
      <table border="0" align="center" width="450">
      	<s:textfield label="ҩƷ����" name="df.name"></s:textfield>
      	<s:select list="#request.pharmaceuticallist" listValue="pname" listKey="pid" label="����" name="df.pharmaceutical.pid"></s:select>
      	<s:select list="#request.drugclasslist" label="��������" listValue="cname" listKey="cid" name="df.drugclass.cid"></s:select>
      	<s:textfield label="ҩƷ����" name="df.isbn"></s:textfield>
      	<s:textfield label="�÷�����" name="df.usager"></s:textfield>
      	<s:textfield label="ҩƷ�ɷ�" name="df.component"></s:textfield>
      	<s:textfield label="���" name="df.specifications"></s:textfield>
      	<s:textfield label="��λ" name="df.company"></s:textfield>
      	<s:textfield label="�������" name="df.lowerinventory"></s:textfield>
      	<s:textfield label="�������" name="df.stockupperlimit"></s:textfield>
      	<s:textfield label="������" name="df.buyingprice"></s:textfield>
      	<s:textfield label="���ۼ�" name="df.retailprice"></s:textfield>
      	<s:textarea label="��ע" name="df.remark"></s:textarea>
      	<s:file name="picpath" label="��ѡ��ͼƬ" onchange="document.getElementById('images').src=this.value"></s:file>
      	<s:submit value="�������" align="left"></s:submit>
      	 <img alt="��ʾҩƷͼƬ��Ϣ" src="" id="images" width="60px" height="60px">
       <input type="button" value="����" onclick="javascript:history.go(-1);" style="position: absolute;top: 488px;left: 570px;"/>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
