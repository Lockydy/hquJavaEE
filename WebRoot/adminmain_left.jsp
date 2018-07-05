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
    
    <title>My JSP 'adminmain_left.jsp' starting page</title>
    
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
  <body style="background-color: #669966">
  	<a href="getall.action" target="adminmain_right">查看库存</a><br>
    <br>
    <a href="adminipinfo.jsp" target="adminmain_right">物料入库</a><br>
    <br>
    <a href="getAller.action" target="adminmain_right">审核物料相关申请</a><br>
    <br>
    <a href="getUsername.action" target="adminmain_right">管理物料出入库申请人账号</a><br>
    <br>
    <a href="appUsername.jsp" target="adminmain_right">注册物料出入库申请人账号</a><br>
    <br>
    <a href="adminpassword.jsp" target="_top">修改密码</a><br>
    <br>
    <a href="Logout.action" target="_top">退出</a><br>
  </body>
</html>
