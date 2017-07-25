<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script type="text/javascript">
			var m = "";
			function menu(num){
				sub = eval("sub_"+num+".style");
				if(m != sub){
					if(m != ""){
						m.display = "none";
					}
					sub.display='block';
					m = sub;
				}else{
					sub.display = "none";
					m = "";
				}
			}
		</script>
		<link rel="stylesheet" type="text/css" href="images/styles.css">
	    <style type="text/css">
<!--
.m1 {
	font-size: 12px;
	font-weight: bold;
	margin-left: 60px;
	text-align: center;
	vertical-align: sub;
}
.sub1 {
	margin-left: 40px;
}
-->
        </style>
</head>
  <body>
    <table border="0" width="200" height="100%" align="right" cellSpacing="0" cellPadding="0" bgcolor="#E0FBC4">
    	<!-- 药品信息模块 -->
    	<tr>
			<td onClick="menu(0)" height="33" background="images/m1.jpg">
				<font class="m1">
					药品信息管理
				</font>
			</td>
		</tr>
		
		
		<tr bgcolor="#E0FBC4">
			<td id="sub_0" style="display: none;">
				<table width="80%" align="center">
				
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugclass!findAll" target="main" class="sub1">药品分类</a>
						</td>
					</tr>
					
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="pharmaceutical!findAll" target="main" class="sub1">
								药品剂型
							</a>
						</td>
					</tr>
					
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="supplymanager!findAll" target="main" class="sub1">进货单位</a>
						</td>
					</tr>
					
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="druginfo!findAll" target="main" class="sub1">药品目录</a>
						</td>
					</tr>
					
					
					
				</table>
			</td>
		</tr>
		
		
    	<!-- 库存管理模块 -->
    	<tr>
			<td onClick="menu(1)" height="33" background="images/m1.jpg">
				<font class="m1">
					库存管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_1" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugstorage!findAll" target="main" class="sub1">入库管理</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugdelivery!findAll" target="main" class="sub1">出库管理</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<!-- 库存查询模块-->
    	<tr>
			<td onClick="menu(2)" height="33" background="images/m1.jpg">
				<font class="m1">
				库存查询
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_2" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugstorage!findAllcheck" target="main" class="sub1">入库查询</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugdelivery!findAllcheck" target="main" class="sub1">出库查询</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="druginventory!findAll" target="main" class="sub1">库存查询</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 药品预警模块-->
    	<tr>
			<td onClick="menu(3)" height="33" background="images/m1.jpg">
				<font class="m1">
				药品预警
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_3" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="druginventory!findcallpolice" target="main" class="sub1">报警管理</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="drugstorage!finddate" target="main" class="sub1">药品盘点</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 用户管理模块 -->
    	<tr>
			<td onClick="menu(4)" height="33" background="images/m1.jpg">
				<font class="m1">
				用户管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_4" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="useradd.jsp" target="main" class="sub1">用户添加</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="user!findAll" target="main" class="sub1">查看所有用户信息</a>
						</td>
					</tr>
					
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="javascript:if(confirm('确认退出吗?'))window.parent.location='user!logout'" target="main" class="sub1">退出系统</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
	<!-- 帮助-->
    	<tr>
			<td onClick="menu(5)" height="33" background="images/m1.jpg">
				<font class="m1">
				帮助
				</font>
			</td>
		</tr>
		
		<tr bgcolor="#E0FBC4">
			<td id="sub_5" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="about.jsp" target="main" class="sub1">关于我们</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td height="100%"></td>
		</tr>
	</table>
  </body>
</html>
