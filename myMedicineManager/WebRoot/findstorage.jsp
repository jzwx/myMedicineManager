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
       
          <td class="tb_tl2" align="right" width="70">ҩƷ���ƣ�</td>
          <td align="left">${ds.druginfo.name}</td>
          <td class="tb_tl2" align="right" width="70">ҩƷ���</td>
          <td align="left" colspan="2">${ds.specifications}</td>
          
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">ҩƷ���ţ�</td>
          <td align="left">${ds.drugnumber}</td>
          <td class="tb_tl2" align="right" width="70">������λ��</td>
          <td align="left" colspan="2">${ds.supplymanager.sname}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
         <td class="tb_tl2" align="right" width="70">���������</td>
          <td align="left">${ds.storagenum}</td>
          <td class="tb_tl2" align="right" width="70">�����ۣ�</td>
          <td align="left" colspan="2">${ds.buyingprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">���ۼۣ�</td>
          <td align="left">${ds.retailprice}</td>
          <td class="tb_tl2" align="right" width="70">�����ۣ�</td>
          <td align="left" colspan="2">${ds.wholesaleprice}</td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">������ڣ�</td>
          <td align="left"><s:date name="ds.startdate" format="yyyy-MM-dd"></s:date></td>
          <td class="tb_tl2" align="right" width="70">ʧЧ���ڣ�</td>
          <td align="left" colspan="2"><s:date name="ds.enddate" format="yyyy-MM-dd"></s:date></td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl2" align="right" width="70">�����ˣ�</td>
          <td align="left" colspan="4">${ds.brokerage}</td>
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
