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

		<title>修改用户信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px
}

.STYLE2 {
	color: #FF0033;
	font-style: italic;
}
-->
</style>
	</head>
	<script type="text/javascript" language="javascrip">
	  function checkup(){
   var name = document.user.username.value;
   var password1 = document.user.password1.value;
   var password2 = document.user.password2.value;
   var email = document.user.email.value;
   var question = document.user.question.value;
   var answer = document.user.answer.value;
    if(name==""){
          window.alert("用户名不能为空！");
          return false;
    } else if(password1==""){
          window.alert("密码不能为空！");
          return false;         
    }else if(email==""){
          window.alert("安全邮箱不能为空！");
          return false;         
    }else if(question==""){
          window.alert("密码提示问题不能为空！");
          return false;         
    }else if(answer==""){
          window.alert("提示问题答案不能为空！");
          return false;         
    }else {
             
		       if( password1.length<6){
		           window.alert("密码长度不能小于六位");
	               return false;
	          }else if(password1!=password2){
	           window.alert("两次输入的密码不一致！");
	           document.user.password2.value=null;
	               return false;
	          }else if(question.length<3){
	          	window.alert("密码提示问题不能少于3个字符!")
	          	return false;
	          	}else if(answer.length<3){
	          	 window.alert("提示问题答案不能少于3个字符!")
	          	return false;
	          	} else  {	
	          var ch =name.charAt(0);
	          if(ch<9&&ch>0){
	            alert("用户名不能以数字开头！")
	            return  false;
	          }		    
			      }
    }
			       return true;     
  }
  </script>
	<body>
		<%
			String returnInfo = (String) request.getAttribute("returnInfo");
		%>
		<center>
						<form method="post" action="user/User_update" name="user"
			onSubmit="return checkup()">
				<p>
					&nbsp;
				</p>
				<p class="STYLE1">
					<b>修改信息</b>
				</p>
				<table border="1" cellspacing="0" bordercolor="#333333">
					<tr>
						<td width="847">
							<table width="800" height="728" border="0" cellspacing="1">
								<tr>
									<td colspan="3" align="center">
										请注意：带有
										<span class="STYLE2">*</span> 的项目必须规范填写。
									</td>
								</tr>
								<tr>
									<td width="190" height="55" align="right">
										请输入用户名：
										<span class="STYLE2">*</span>
									</td>
									<td width="245">
										<label>
											
											<br>
											
											<input name="username" type="text" id="username" value="<s:property value="user.username"/>"/>
										</label>
										
									</td>
									<td width="342" bgcolor="#EFEFEF">
										由
										<EM>字母a～z</EM>(不区分大小写)、
										<EM>数字0～ 9</EM>、
										<EM>点</EM>、
										<EM>减号</EM>或
										<EM>下划线</EM>组成
										<BR>
										只能以
										<EM>数字</EM>或
										<EM>字母</EM>开头和结尾，例如：beijing.2008
										<BR>
										用户名长度 为
										<EM>4～18</EM>个字符
									</td>
								</tr>
								<tr>
									<td align="right">
										密 码：
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password1" type="password" id="password1" value="<s:property value="user.password"/>"/>
									</td>
									<td rowspan="2" bgcolor="#F2F2F2">
										密码长度6～16位，字母区分大小写
									</td>
								</tr>
								<tr>
									<td align="right">
										确认密码：
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="password2" type="password" id="password2" value="<s:property value="user.password"/>"/>
									</td>
								</tr>
								<tr>
									<td align="right">
										安全 E-mail:
										<span class="STYLE2">*</span>
									</td>
									<td>
										<input name="email" type="text" id="email" value="<s:property value="user.email"/>"/>
									</td>
									<td bgcolor="#EFEFEF">
										用于在密码丢失时找到密码
									</td>
								</tr>
								<tr>
									<td align="right">
										密码提示问题：
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="question" type="text" id="question" value="<s:property value="user.question"/>"/>
									</td>
									<td rowspan="2" bgcolor="#EEEEEE">
										答案长度6～30位，字母区分大小写，一个汉字占两位。用 于修复帐号密码
									</td>
								</tr>
								<tr>
									<td align="right">
										您的答案：
										<span class="STYLE2">* </span>
									</td>
									<td>
										<input name="answer" type="text" id="answer" value="<s:property value="user.answer"/>"/>
									</td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<hr>
									</td>
								</tr>
								<tr>
									<td align="right">
										是否公开注册信息：
									</td>
									<td>
										<label>
										<s:property value="user.isopen"/>
											<input type="radio" name="isopen" value="1" <s:if test="1==user.isOpen"> checked="checked" </s:if>/>
											是
											<input name="isopen" type="radio" value="0" <s:if test="0==user.isOpen"> checked="checked" </s:if>/>
											否
										</label>
									</td>
									<td bgcolor="#EFEFEF">
										&nbsp;
									</td>
								</tr>
								<tr>
									<td align="right">
										真实姓名：
									</td>
									<td>
										<input name="realname" type="text" id="realname"
											maxlength="16" value="<s:property value="user.realname"/>"/>
									</td>
									<td rowspan="6" bgcolor="#EFEFEF">
										个人信息与个性设置
									</td>
								</tr>
								<tr>
									<td align="right">
										性别：
									</td>
									<td>
										<label>
											<input type="radio" name="sex" value="1" <s:if test="1==user.isOpen"> checked="checked" </s:if>/>
											男
											<input name="sex" type="radio" value="0" <s:if test="0==user.isOpen"> checked="checked" </s:if> />
											女
										</label>
									</td>
								</tr>
								<tr>
									<td align="right">
										出生日期：
									</td>
									<td>
										<label>
											<select name="year" id="year">
												<%
													for (int i = 1900; i < 2013; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											年
											<select name="month" id="month">
												<%
													for (int i = 1; i < 13; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											月
											<select name="day" id="day">
												<%
													for (int i = 1; i < 32; i++) {
												%>
												<option>
													<%=i%>
												</option>
												<%
													}
												%>
											</select>
											日
										</label>
									</td>
								</tr>
								
								<tr>
									<td align="right">
										详细地址：
									</td>
									<td>
										<input name="address" type="text" id="address" value="<s:property value="user.address"/>"/>
									</td>
								</tr>
								
								<tr>
									<td height="29" align="right">
										QQ：
									</td>
									<td>
										<input name="qq" type="text" id="qq" value="<s:property value="user.qq"/>"/>
									</td>
									
								</tr>

								<tr>
									<td align="right">
										个性签名：
									</td>
									<td>
										<label>
											<textarea name="idiograph" id="idiograph" ><s:property value="user.idiograph"/></textarea>
										</label>
									</td>
								</tr>
								<tr>
									<td colspan="3" align="center">
										<label>
											<input type="submit" name="Submit" value="提交" />
										</label>
										<label>		&nbsp; &nbsp;
									<input type="reset" value="重置" name="reset"></label>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
			</form>
		</center>
	</body>
</html>
