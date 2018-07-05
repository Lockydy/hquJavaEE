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
    
    <title>My JSP 'adminpassword.jsp' starting page</title>
    
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
	<script type="text/javascript" src="js/modpwd.js" charset="utf-8"></script>
  </head>
  <jsp:include page="isloginer.jsp"></jsp:include>
  <body onload="focuspwd()">
  <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
		<img src="pic/123.jpg" height="100%" width="100%"/>
	</div>
	<div id="main">
  	<s:form name="form1" onsubmit="return modpwd()" action="UPDATEpassword.action" >
  		<tr><td><s:property value="#request.msg"/></td></tr>
  		<s:password name="pwd1" label="旧密码"></s:password>
  		<s:password name="pwd2" label="新密码"></s:password>
  		<s:password name="password" label="再次确认新密码"></s:password>
  		<s:submit value="确认"></s:submit>
    </s:form>
    <center><a href="main2.jsp">返回到主界面</a></center>
    </div>
  </body>
</html>
