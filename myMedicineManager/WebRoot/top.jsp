<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="images/styles.css">

	</head>
	<body>
		<table width="100%" border="0" align="center" cellspacing="0"
			cellpadding="0" height="140">
			<tr>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						height="140" background="images/top2.jpg">
						<tr>
							<td height="140" valign="top" width="556"><img src="images/top1.jpg" width="556" height="140" border="0"></td>
							<td width="100%"></td>
							<td width="245" height="140" valign="top"><img src="images/top3.jpg" width="245" height="140" border="0"
									usemap="#Map"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td background="images/top_bg1.jpg" width="" height="40" class="wel">
					<%=session.getAttribute("username") %>
					<span>,欢迎登录医药管理系统!</span>
				</td>
				<td background="images/top_bg1.jpg" width="60" align="right">
				<span target="_top" style="position:absolute;right:142px;top:150px;" class="exit">|</span>
				<a href="user!prepassword?username=<%=session.getAttribute("username") %>" style="position:absolute;right:90px;top:150px;" class="exit"  target="main">修改密码</a><span target="_top" style="position:absolute;right:82px;top:150px;" class="exit">|</span>
					<a href="javascript:if(confirm('确认退出吗?'))window.parent.location='user!logout'" target="_top" class="exit" style="position:absolute;right:30px;top:150px;">
						退出登录
					</a>
				</td>
			</tr>
		</table>

		<map name="Map">
			<area shape="rect" coords="108,11,153,27"
				href="<html:rewrite page="/language.do?lan=zh"/>" target="_top">
			<area shape="rect" coords="179,11,235,27"
				href="<html:rewrite page="/language.do?lan=en"/>" target="_top">
		</map>
	</body>
</html>