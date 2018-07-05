<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仓库管理系统---管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	    #main{
	width:300px;
	height:200px; position:absolute; left:50%; top:50%; margin-left:-150px; margin-top:-100px;
	 
	}
	</style>
  </head>
  
  <body>
  <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="pic/back.jpg" height="100%" width="100%"/>
	</div>
	<div id="main">
		<center>仓库管理系统——管理员登陆
    <s:form action="/checkAdmin" method="post">
    <s:textfield name="user.id" label="用户名"></s:textfield>
    <s:password name="user.password" label="密码"></s:password>
    <s:hidden name="user.role" value="admin"></s:hidden>
    <s:submit value="登陆"></s:submit>
    </s:form>
    <a href="index.jsp">普通员工登陆入口</a>
    </center>
	</div>
  </body>
</html>
