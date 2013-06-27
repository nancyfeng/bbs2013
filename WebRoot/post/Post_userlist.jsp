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

		<title>查帖</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="../skin/css/post.css" type="text/css" />


	</head>
	<body>
		<table width="100%" cellpadding="10" >
			<tr id="tr2">
				<td>
					<font color="#b06431" size="2"><strong><s:property
								value="groud.plate.name" /> » <s:property value="groud.title" />
					</strong> </font>
				</td>
				<td align="center" width="10%">
					<a href="post/Post_addInput"><img
							src="../skin/images/frame/button.gif" /> </a>
				</td>
				<td width="5%"></td>
			</tr>
		</table>
		<table width="90%" align="center" cellpadding="9" cellspacing="0"
			border="0" bordercolor="#ffffff">

			<tr bgcolor="#edebbe" bordercolor="#edebbe">
				<td width="5%" align="center">
					状态
				</td>
				<td width="40%">
					标题
				</td>
				<td width="10%">
					楼主
				</td>
				<td width="15%">
					时间
				</td>
				<td width="10%" align="center">
					回复/查看
				</td>

			</tr>

			<s:iterator value="posts">
				<tr id="tr">
					<td align="center">
						<s:if test="readTime>=10">
						<img src="../skin/images/frame/hot.gif" /> 
						</s:if>
						<s:else>
						<img src="../skin/images/frame/new.gif" /> 
						</s:else>
					</td>
					<td>
						<a href="post/Post_listOne?postId=<s:property value="id" />"><s:property
								value="title" /> </a>
					</td>
					<td>
						<s:property value="user.username" />
					</td>
					<td>
						<s:property value="createTime" />
					</td>
					<td align="center">
						<s:property value="replyTime" />
						/
						<s:property value="readTime" />
					</td>
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
				<td><a href="Post_list?offiset=1&groudId=<s:property value="#session.groudId"/>">首页</a>
					<s:bean name="org.apache.struts2.util.Counter" id="counter">
   <s:param name="first" value="2" />
   <s:param name="last" value="page" />
   <s:iterator>
   [<a href="Post_list?offiset=<s:property/>&groudId=<s:property value="#session.groudId"/>"><s:property/></a>]
   </s:iterator>
</s:bean>
 <a href="Post_list?offiset=<s:property value="page"/>&groudId=<s:property value="#session.groudId"/>">末页</a>
				</td>
			</tr>
		</table>
	</body>
</html>
