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
    
    <title>My JSP 'adminmify.jsp' starting page</title>
    
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
    	<s:set value="#request.modi" id="modi"></s:set>
  		<s:form action="Update" method="post">
  		<tr>
  		<table bgcolor="#c0c0c0">
    		<td align="center" colspan="2" bgcolor=green>修改表单</td>
    	</tr>
    	<tr>
    		<td><s:textfield name="modi.daima" label="物料代码" value="%{#modi.daima}"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="modi.number" label="数量" value="%{#modi.number}"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="modi.name" label="物料名" value="%{#modi.name}"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="modi.unit" label="单位" value="%{#modi.unit}"></s:textfield></td>
    	</tr>
    	<s:hidden name="modi.id" value="%{#modi.id}"></s:hidden>
    	<s:submit align="center" value="修改物料"></s:submit>
  		</s:form>
  		</table>
  	</center>
  </body>
</html>
