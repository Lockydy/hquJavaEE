<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:include page="islogin.jsp"></jsp:include>
  <body style="background-color: #669966">
    <marquee>欢迎使用华侨大学计算机学院仓库管理系统~</marquee>
    <marquee>亲爱的员工~你好~</marquee>
    <script type="text/javascript">
function display(clock){
    var now=new Date();   //创建Date对象
    var year=now.getFullYear(); //获取年份
    var month=now.getMonth(); //获取月份
    var date=now.getDate();  //获取日期
    var day=now.getDay();  //获取星期
    var hour=now.getHours(); //获取小时
    var minu=now.getMinutes(); //获取分钟
    var sec=now.getSeconds(); //获取秒钟
    month=month+1;
    var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    var week=arr_week[day];  //获取中文的星期
    if(sec<10)
    var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+"0"+sec; //组合系统时间
    else
    var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec;
    clock.innerHTML="当前时间："+time; //显示系统时间
}
window.onload=function(){
    window.setInterval("display(clock)", 1000);
}
</script>
<div id="clock" ></div>
  </body>
</html>
