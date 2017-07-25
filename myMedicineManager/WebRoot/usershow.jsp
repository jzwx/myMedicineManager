<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
  </head>
  <body>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					用户管理
					&gt;&gt; 查看所有用户信息
					&gt;&gt; 所有用户
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="500" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">ID</td>
          <td class="tb_tl">用户名</td>
          <td class="tb_tl">角色</td>
          <td class="tb_tl">创建时间</td>
          <td class="tb_tl">操作</td>
        </tr>
        	<s:iterator value="#request.userlist">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${id}</td>
	        			<td>
	        				${username}
	        			</td>
	        			<td>
	        				<c:if test="${role=='1'}">超级管理员</c:if>
	        				<c:if test="${role=='0'}">普通管理员</c:if>
	        			</td>
	        			<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
	        			<td align="center">
	        				<a href="user!preupdate?id=${id}">修改</a>&nbsp;&nbsp;<a href="user!delete?id=${id}" onclick="return confirm('确定需要删除吗?');">删除</a>
	        			</td>
	        		</tr>
	         </s:iterator>
	         <tr bgcolor="#FFFFFF" align="right" >
	         <td colspan="5">${userpage.toolBar}</td>
	         </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
