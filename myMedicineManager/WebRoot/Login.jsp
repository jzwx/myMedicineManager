<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ҽҩ����ϵͳ</title>
	<style type="text/css">
		<!--
		body{
			margin: 0px;
			font-size: 12px;
			background-color: #4C8C1C;
		}
		.tb1{
			position: relative;
			top: -345;
			left: 280;
		}
		.it{
			background-color: #E1FFC1;
			height: 20px;
			width: 150px;
		}
		-->
	</style>
  </head>
  <body>
  <table border="0" width="990" height="600" align="center" cellpadding="0" cellspacing="0">
      	
      	<tr>
          <td colspan="2" align="left" valign="top">
         		<img src="images/login_zh.jpg" border="0" usemap="#Map">
         		<form action="user!login" method="post">
		    	<table border="0" class="tb1">
		    		<tr>
			          <td align="right">�� &nbsp;ɫ ��</td>
			          <td>
			            <select  name="user.role" style="width:150px;" Class="it">
        				<option value="1">��������Ա</option>
        				<option value="0">����Ա</option>
        				</select>
			          </td>
			        </tr>
			        <tr>
			          <td align="right">�� �� �� ��</td>
			          <td><input type="text" name="user.username" Class="it" size="21"/></td>
			        </tr>
			        <tr>
			          <td align="right">��  &nbsp;��  ��</td>
			          <td><input type="password" name="user.password" Class="it" size="21"/></td>
			        </tr>
			        <tr>
			          <td colspan="2" align="center" height="30">
			         	 <input type="submit" value="��¼">
			         	 <input type="reset" value="����"/>
			          </td>
			        </tr>
			      </table>
		    </form>
          </td>
        </tr>
  </table>
  
<map name="Map"><area shape="rect" coords="265,140,323,154" href="<html:rewrite page="/language.do?lan=zh"/>">
<area shape="rect" coords="335,138,406,153" href="<html:rewrite page="/language.do?lan=en"/>">
</map></body>
</html>

