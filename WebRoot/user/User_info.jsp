<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<title>用户信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<jsp:include page="../validate/User_validate.jsp"></jsp:include>
	<body onload="opener.location.reload()">
		<font color="#804040">查看资料 -<br>
			<br>
		</font>
		<s:property value="user.userName" />
		<hr>
		<br>
		<table width="560" border="0" height="185">
			<tbody>
				<tr>
					<td>
						&nbsp;
					</td>
					<td>
						用户名：
					</td>
					<td>
						<s:property value="user.username" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						用户类型：
					</td>
					<td>
						<font color="#ff0080"><s:property value="user.type" /></font>
						<s:if test="'普通用户' == user.type">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;(<font
								color="#8000ff"><a href="../admin/Admin_addInput">申请管理员</a>
							</font>)</font>
						</s:if>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						功勋值：
					</td>
					<td>
						<s:if test="200>=user.score">
					小混混
					</s:if>
						<s:elseif test="500>=user.score">
					野蛮人
					</s:elseif>
						<s:elseif test="1000>=user.score">
					猎人
					</s:elseif>
						<s:elseif test="2000>=user.score">
					猎王
					</s:elseif>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						积分：
					</td>
					<td>
						<s:property value="user.score" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						真实姓名：
					</td>
					<td>
						<s:property value="user.realname" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						性别：
					</td>
					<td>
						<s:if test="1==user.sex">男</s:if>
						<s:else>女</s:else>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						出生日期：
					</td>
					<td>
						<s:property value="user.birthday" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						详细地址：
					</td>
					<td>
						<s:property value="user.address" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						QQ：
					</td>
					<td>
						<s:property value="user.qq" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="10%">
						&nbsp;
					</td>
					<td>
						个性签名：
					</td>
					<td>
						<s:property value="user.idiograph" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</tbody>
		</table>
		<hr />
		<br>
		<br>
		<font color="#8080ff"><a href="user/User_updateInput">修改个人信息</a>
		<font color="#8080ff"><a href="../post/Post_userlist ">查看我的帖子</a>
		</font>
	</body>
</html>
