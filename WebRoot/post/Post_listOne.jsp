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

		<title>看帖</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="post/css/main.css" type="text/css" />


	</head>

	<body>
		<table width="100%" cellpadding="10" height="50">
			<tr id="tr2">
				<td>
					<font color="#b06431" size="2"><strong><s:property
								value="groud.plate.name" /> » <s:property value="groud.title" />
					</strong> </font>
				</td>
			</tr>
		</table>
		<table cellpadding="10" cellspacing="10" border="1" width="90%"
			align="center" bordercolor="#f1daa9">
			<tr>
				<td width="20%" bgcolor="#f1daa9">
					<table>
						<tr>
							<td>
								用户名:
							</td>
							<td>
								<s:property value="user.username" />
							</td>
						</tr>
						<tr height="50">
							<td></td>
						</tr>
						<tr>
							<td>
								帖子:
							</td>
							<td>
								<s:property value="user.postTime"/>
							</td>
						</tr>
						<tr>
							<td>
								回帖:
							</td>
							<td>
								<s:property value="user.replyTime" />
							</td>
						</tr>
						<tr>
							<td>
								积分:
							</td>
							<td>
								<s:property value="user.score" />
							</td>
						</tr>
						<tr>
							<td>
								签名:
							</td>
							<td>
								<s:property value="user.idiograph" />
							</td>
						</tr>

					</table>
				</td>
				<td bgcolor="#fdf4e3" valign="top">
					<table width="100%">
						<tr>
							<td>
								<font color="#f47028"><strong><font size="5">
											<s:property value="post.title" />
									</font>
								</strong>
								</font>
								<br />
								<hr color="#f1daa9" />
							</td>
						</tr>
						<tr>
							<td>
								<font size="4" face="楷体"> <s:property
										value="post.context" />
								</font>
							</td>
						</tr>
						<tr height="50">
							<td></td>
						</tr>
						<tr>
							<td align="right">
								<hr color="#f1daa9" />
								<s:property value="post.createTime"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<table height="20"><tr><td></td></tr></table>

		<s:iterator value="replys">
			<table cellpadding="10" cellspacing="10" border="1" width="90%" align="center">
				<tr>
					<td width="20%" bgcolor="#f1daa9">
						<table>
							<tr>
								<td>
									用户名:
								</td>
								<td>
									<s:property value="user.username" />
								</td>
							</tr>
							<tr height="50">
								<td></td>
							</tr>
							<tr>
								<td>
									帖子:
								</td>
								<td>
									<s:property value="user.postTime" />
								</td>
							</tr>
							<tr>
								<td>
									回帖:
								</td>
								<td>
									<s:property value="user.replyTime" />
								</td>
							</tr>
							<tr>
								<td>
									积分:
								</td>
								<td>
									<s:property value="user.score" />
								</td>
							</tr>
							<tr>
								<td>
									签名:
								</td>
								<td>
									<s:property value="user.idiograph" />
								</td>
							</tr>

						</table>
					</td>
					<td bgcolor="#fdf4e3" valign="top">
					<table width="100%">
						<tr>
							<td>
								<font size="4" face="楷体"> <s:property
										value="context" />
								</font>
							</td>
						</tr>
						<tr height="80">
							<td></td>
						</tr>
						<tr>
							<td align="right">
								<hr color="#f1daa9" />
								<s:property value="replyTime"/><br/>
								<font color="#0000ff"><strong><span onclick="window.scrollTo(0,0);">&uarr;TOP</span></strong></font>
							</td>
						</tr>
					</table>
				</td>
				</tr>
			</table>
		</s:iterator>

<table width="100%"><tr><td width="10%"></td><td><a href="post/Post_listOne?offiset=1&postId=<s:property value="#session.postId"/>">首页</a>
					<s:bean name="org.apache.struts2.util.Counter" id="counter">
   <s:param name="first" value="2" />
   <s:param name="last" value="page" />
   <s:iterator>
   [<a href="post/Post_listOne?offiset=<s:property/>&postId=<s:property value="#session.postId"/>"><s:property/></a>]
   </s:iterator>
</s:bean>
 <a href="post/Post_listOne?offiset=<s:property value="page"/>&postId=<s:property value="#session.postId"/>">末页</a>
				</td></tr></table>

		<s:if test="null!=#session.username">
			<table width="90%" align="center">
				<tr height="50"></tr>
				<tr>
					<td>
						<form
							action="post/Post_reply?postId=<s:property value="post.id" />"
							method="post">
							<textarea rows="10" cols="80" name="context" style="background-color: rgb(251, 245, 236);"></textarea>
							<br />
							<br />
							<br />
							<input type="submit" value="发表" />
						</form>
					</td>
				</tr>
			</table>
		</s:if>
		<s:else>
			<table>
				<tr height="50"></tr>
				<tr>
					<td>
						<font color="#ff0000">登录后才能留言！</font>
					</td>
				</tr>
			</table>
		</s:else>
	</body>
</html>
