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
    
    <title>My JSP 'adminthink.jsp' starting page</title>
    
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
    	<s:set value="#request.checkedin" id="checkedin"></s:set>
  		<s:form action="Finaler" method="post">
  		<tr>
  		<table bgcolor="#c0c0c0">
    		<td align="center" colspan="2" bgcolor=green>申请单</td>
    	</tr>
    	<tr>
    		<td align="center">
    		<s:hidden name="checkedin.outterin" list="#{'0':'入库','1':'出库'}" value="%{#checkedin.outterin}"> </s:hidden>
    		</td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.daima" label="物料代码" value="%{#checkedin.daima}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.name" label="物料名" value="%{#checkedin.name}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.unit" label="单位" value="%{#checkedin.unit}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.number" label="数量" value="%{#checkedin.number}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.date" label="日期" value="%{#checkedin.date}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.who" label="申请人" value="%{#checkedin.who}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:hidden name="checkedin.memory" label="备注" cssStyle="height:150px" value="%{#checkedin.memory}"></s:hidden></td>
    	</tr>
    	<tr>
    		<td><s:textfield name="checkedin.result" label="审核结果"  value="%{#checkedin.result}"></s:textfield></td>
    	</tr>
    	<s:hidden name="checkedin.id" value="%{#checkedin.id}"></s:hidden>
    	<s:submit align="center" value="提交审核表"></s:submit>
  		</s:form>
  		</table>
  	</center>
  </body>
</html>
