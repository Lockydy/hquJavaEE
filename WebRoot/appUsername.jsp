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
    
    <title>My JSP 'appUsername.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:include page="isloginer.jsp"></jsp:include>
  <body>
    <center>
  		<s:form action="appUsername" method="post">
  		<tr>
  		<table bgcolor="#c0c0c0">
    		<td align="center" colspan="2" bgcolor=green>账号注册</td>
    	</tr>
    	<tr>注意 账号申请后 密码对管理员不可见 请申请后一定要记住密码</tr>
    	<tr>
    		<td><s:textfield name="userlo.id" label="账号"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="userlo.password" label="密码"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="userlo.name" label="姓名"></s:textfield></td>
    	</tr>
    	<s:submit align="center" value="账号注册"></s:submit>
  		</s:form>
  		</table>
  	</center>
  </body>
</html>
