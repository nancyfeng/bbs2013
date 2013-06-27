<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>列出用户</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<jsp:include page="Admin_list.jsp"></jsp:include>
	<body onload="opener.location.reload()">
	<table width="90%" align="center" cellpadding="9" cellspacing="0"
			border="0" bordercolor="#ffffff">

			<tr bgcolor="#edebbe" bordercolor="#edebbe">
				<td width="10%">
					id
				</td>
				<td width="20%" align="left">
					用户名
				</td>
				<td width="30%" align="left">
					签名
				</td>
				<td width="10%">
					发帖数
				</td>
				<td width="10%" align="center">
					回复数
				</td>
				<td width="10%" align="center">
					积分
				</td>
				<td width="10%" align="center">
					操作
				</td>
			</tr>

			<s:iterator value="users">
				<tr id="tr">
					<td>
						<s:property value="id"/>
					</td>
					<td>
						<a href="user/User_info?userId=<s:property value="id"/>"><s:property value="username" /></a>
					</td>
					<td>
						<s:property value="idiograph" />
					</td>
					<td>
						<s:property value="postTime" />
					</td>
					<td>
						<s:property value="replyTime" />
					</td>
					<td align="center">
						<s:property value="score" />
					</td>
					<td align="center"><a href="admin/Admin_userDelete?userId=<s:property value="id" /> ">删除</a></td>
				</tr>
			</s:iterator>
		</table>
		<table align="center" width="100%" >
			<tr height="50">
				<td width="5%">
				</td>
				<td></td>
			</tr>
			<tr>
				<td width="5%">
				</td>
				<td><a href="admin/Admin_userList?offiset=1">首页</a>
					<s:bean name="org.apache.struts2.util.Counter" id="counter">
   <s:param name="first" value="2" />
   <s:param name="last" value="page" />
   <s:iterator>
   [<a href="admin/Admin_userList?offiset=<s:property/>"><s:property/></a>]
   </s:iterator>
</s:bean>
 <a href="admin/Admin_userList?offiset=<s:property value="page"/>">末页</a>
				</td>
			</tr>
		</table>
	</body>
</html>
