<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>修改用户信息</title>
		<link rel="stylesheet" href="skin/css/base.css" type="text/css" />
		<link rel="stylesheet" href="skin/css/top.css" type="text/css" />
		<script language='javascript' type="text/javascript"
			src="skin/js/frame/top.js"></script>
	</head>
<script language=JavaScript>
   parent.topFrame.location.reload();
</script>
	
	<body onload="opener.location.reload()">
	<jsp:include page="User_info.jsp"></jsp:include>
	</body>
</html>
