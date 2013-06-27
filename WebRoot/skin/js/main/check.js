
function Check_Register() {
	if(form1.register_username.value==""){
		alert("请填写用户名");
		form1.register_username.focus();
		return false;
		}
	if(form1.register_password.value.length<3){
		alert("密码不能少于6个字符");
		form1.register_password.focus();
		return false;
		}
	if(form1.register_email.value.length<3){
		alert("请正确输入email");
		form1.register_email.focus();
		return false;
		}
}


function Check_Login(){
	if(form2.login_id.value==""){
		alert("请填写用户名");
		form2.login_id.focus();
		return false;
		}
	if(form2.login_password.value==""){
		alert("请填写密码");
		form2.login_password.focus();
		return false;
		}
	if(form2.login_check.value==""){
		alert("请输入验证码")
		form2.login_check.focus();
		return false;
	}
	document.forms.form2.action="login_success.php";
	document.forms.form2.submit();
}

function Check_Log_Add(){
	if(form1.log_title.value==""){
		alert("请输入标题");
		form1.log_title.focus();
		return false;
		}
}

function register(){
	window.self.location="register.php";
}

function Check_Photo_Add(){
	if(form1.photo_album.value==""){
		alert("请输入相册名");
		form1.photo_album.focus();
		return false;
		}
}

function Check_Seach(){
	if(form1.seachstr.value==""){
		alert("请输入要搜索的内容");
		from1.seachstr.focus();
		return false;
	}
}
