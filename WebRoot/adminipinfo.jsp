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
    
    <title>My JSP 'adminipinfo.jsp' starting page</title>
    
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
  		<s:form action="inform" method="post">
  		<tr>
  		<table bgcolor="#c0c0c0">
    		<td align="center" colspan="2" bgcolor=green>添加新库存物料</td>
    	</tr>
    	<tr>
    		<td><s:textfield name="xist.daima" label="物料代码"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="xist.name" label="物料名"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="xist.unit" label="单位"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="xist.number" label="数量"></s:textfield></td>
    	</tr>
    	<s:submit align="center" value="添加物料"></s:submit>
  		</s:form>
  		</table>
  	</center>
  </body>
</html>
