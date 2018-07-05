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
    
    <title>My JSP 'useripinfo.jsp' starting page</title>
    
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
  <body>
  	<center>
  		<s:form action="inputform" method="post">
  		<tr>
  		<table bgcolor="#c0c0c0">
    		<td align="center" colspan="2" bgcolor=green>申请单</td>
    	</tr>
    	<tr>
    		<td align="center">
    		<s:radio name="form.outterin" list="#{'0':'入库','1':'出库'}" value="'0'"> </s:radio>
    		</td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.daima" label="物料代码"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.name" label="物料名"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.unit" label="单位"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.number" label="数量"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.date" label="日期"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.who" label="申请人"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="form.memory" label="备注" cssStyle="height:150px"></s:textfield></td>
    	</tr>
    	<s:submit align="center" value="上传申请表"></s:submit>
  		</s:form>
  		</table>
  	</center>
  </body>
</html>
