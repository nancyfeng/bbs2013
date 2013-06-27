<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script Language="JavaScript">
function show1(){
	if (!document.all)
		return
	var Digital=new Date();
	var year=Digital.getYear();
	var month=Digital.getMonth()+1;
	var day=Digital.getDate();
	var hours=Digital.getHours();
	var minutes=Digital.getMinutes();
	var seconds=Digital.getSeconds();
	var dn="AM" 
	if (hours>12){
		dn="PM";
		hours=hours-12;
		}
	if (hours==0)
		hours=12;
	if (minutes<=9)
		minutes="0"+minutes;
	if (seconds<=9)
		seconds="0"+seconds;
	var ctime=year+"-"+month+"-"+day+" "+hours+":"+minutes+":"+seconds+" "+dn;
	tick2.innerHTML="<b style='font-family: Arial;font-size:14px;color:#990000;'>"+ctime+"</b>"
	setTimeout("show1()",1000);
}
window.onload=show1
</script> 
<table width="100%" height="60" border="0" cellspacing="0">
<tr><td align = left  hight= 30 colspan=2>简体中文语系由 李治军 维护制作 </td></tr>
   <tr>
    <td width="50%" height="98" align="center" bgcolor="#ffffff"><div align="left"><a href="index.jsp">返回论坛首页</a></div></td>
    <td width="49%" align="center" bgcolor="#ffffff"><p align="right">当前时区 GMT+8, 现在时间是<a id=tick2></a></p>
      <p align="right">  <a href="mailto:lizhijun911@163.com">联系我们</a> - <a href="http://210.46.112.36/cs/index.asp" target="_blank">商大计算机系</a>&nbsp; - <span onclick="window.scrollTo(0,0);">TOP</span></p>
     </td>
  </tr>
</table>
