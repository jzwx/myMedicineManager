<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//String user="";
//user=(String)session.getAttribute("username");
//if(user==null){
//	response.sendRedirect("Login.jsp");
//}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>医药管理系统</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
	</head>
	<logic:empty scope="session" name="user">
		<logic:forward name="login"/>
	</logic:empty>
	<logic:notEmpty scope="session" name="user">
		<frameset rows="180,*" cols="*" framespacing="0" frameborder="no"
			border="0">
			<frame src="top.jsp" name="top" scrolling="NO">
			<frameset rows="*" cols="223,*" framespacing="0" frameborder="no"
				border="0">
				<frame src="normalleft.jsp" name="left">
				<frame src="main.jsp" name="main">
			</frameset>
		</frameset>
		<noframes>
			<body>
			</body>
		</noframes>
	</logic:notEmpty>
</html>
