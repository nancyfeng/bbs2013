<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>退出</title>
		<link rel="stylesheet" href="skin/css/base.css" type="text/css" />
		<link rel="stylesheet" href="skin/css/top.css" type="text/css" />
		<script language='javascript' type="text/javascript"
			src="skin/js/frame/top.js"></script>
	</head>

	
	<body onload="opener.location.reload()">
	<jsp:include page="../front/top.jsp"></jsp:include>
	
	</body>
</html>
