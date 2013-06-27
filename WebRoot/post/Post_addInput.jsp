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

		<title>发帖</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<s:include value="../validate/User_validate.jsp"></s:include>
	<body>
		<table width="90%" cellpadding="10" bgcolor="#fbf2dd" align="center">
			<tr id="tr2">
				<td>
					<font color="#b06431" size="2"><strong><s:property
								value="groud.plate.name" /> » <s:property value="groud.title" />
					</strong> </font>
				</td>
			</tr>
		</table>
			<br>
			<table width="90%" align="center"><tr><td>
			<form id="form2" name="form2" method="post" action="post/Post_add">
			<table width="100%">
			<tr><td width="15%">主题：</td><td><input name="title" type="text" size="55" maxlength="55" /></td></tr>
			<tr height="40"></tr>
			<tr><td width="15%" valign="top">内容：</td><td><textarea name="context" id="context" cols="50" rows="10"></textarea></td></tr>
			<tr><td><br/><br/><input type="submit" name="Submit2" value="提交" /></td></tr>
			</table>
			</form>
			</td></tr></table>

	</body>
</html>
