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
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					����ǰλ�ã�
					ҩƷ��Ϣ����
					&gt;&gt; ҩƷĿ¼
					&gt;&gt; ��ѡҩƷ����
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
  		<table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
       <tr bgcolor="#FFFFFF" >
       
          <td class="tb_tl2" align="right" width="70">ҩƷ���룺</td>
          <td align="left">${df.isbn}</td>
          <td class="tb_tl2" align="right" width="70">ҩƷ���ƣ�</td>
          <td align="left">${df.name}</td>
          
          <!-- ҩƷͼƬ -->
		  <td rowspan="7" width="350" align="center" valign="middle">
			<img src="upload/${df.image}" width="320"	height="220" />
		  </td>
        
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">�������ƣ�</td>
          <td align="left">${df.pharmaceutical.pname}</td>
          <td class="tb_tl2" align="right" width="70">�������ƣ�</td>
          <td align="left">${df.drugclass.cname}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">ҩƷ�ɷ֣�</td>
          <td align="left" colspan="3">${df.component}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">�����ۣ�</td>
          <td align="left">${df.buyingprice}</td>
          <td class="tb_tl2" align="right" width="70">���ۼۣ�</td>
          <td align="left">${df.retailprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">������ޣ�</td>
          <td align="left">${df.lowerinventory}</td>
          <td class="tb_tl2" align="right" width="70">������ޣ�</td>
          <td align="left">${df.stockupperlimit}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">�÷�������</td>
          <td align="left" colspan="3">${df.usager}</td>
        </tr>
        <tr bgcolor="#FFFFFF"  height="40">
          <td class="tb_tl2" align="right" width="70">��ע��</td>
          <td align="left" colspan="3">${df.remark}</td>
        </tr>
        <tr bgcolor="#FFFFFF"  height="40">
        	<td width="70" colspan="5" align="center"><input type="button" value="����" onclick="javascript:history.go(-1);"/></td>
        </tr>
      </table>
  	<br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
