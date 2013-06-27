<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%			String returnInfo = (String) request.getAttribute("returnInfo");
  if(returnInfo!=null){
out.print("<script language=\"javascript\">alert('"
						+ returnInfo + "');</script>");     }
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> 登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <center>
  <br>
  <br>
   <br>
  <br> <br>
  <br> <br>
  <br>
	<form id="form2" name="form2" method="post"
						action="user/User_login" >
						<p>
							<label>
								用户名：
								<input name="username" type="text" size="16" maxlength="16" />
							</label>
						</p>
						<p>
							<label>
								密&nbsp; 码：
								<input name="password1" type="password" size="16" maxlength="16" />
							</label>
						</p>
						<p>
							<label>
								<input type="submit" name="Submit2" value="登录" />
							</label>
							&nbsp;
							<a href="user/User_registerInput">注册</a> &nbsp;
							<!--		<a href="getpwd.do">忘记密码？</a>
					-->
						</p>
					</form>
					  </center>
					
  </body>
</html>
