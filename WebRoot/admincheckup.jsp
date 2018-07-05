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
    
    <title>My JSP 'admincheckup.jsp' starting page</title>
    
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
    <td align="center">各员工表单申请情况</td>
  		<table>
  		<tr><td>申请表id</td><td>出/入</td><td>物料代码</td><td>物料名</td><td>单位</td><td>数量</td><td>申请日期</td><td>申请人</td><td>备注</td><td>管理员审核结果</td></tr>
  		<s:set value="#request.checked" id="checked" ></s:set>
  		<s:iterator value="checked" id="checked">
  		<tr><td><s:property value="#checked.id"/></td>
  		<td><s:if test="#checked.outterin==true">入库</s:if>
		<s:if test="#checked.outterin==false">出库</s:if></td>
  		<td><s:property value="#checked.daima"/></td>
  		<td><s:property value="#checked.name"/></td>
  		<td><s:property value="#checked.unit"/></td>
  		<td><s:property value="#checked.number"/></td>
  		<td><s:property value="#checked.date"/></td>
  		<td><s:property value="#checked.who"/></td>
  	 	<td><s:property value="#checked.memory"/></td>
  	 	<td><s:property value="#checked.result"/></td>
  	 	<td>
  	 	<form action="checkedup.action" method="post">
  		<input type="hidden" name="id" value="<s:property value="#checked.id"/>">
  		<input type="submit" value="审核" onclick="this.form.action='checkedup.action'">
  		</form>
  		</td>
  		<td>
  		<form action="deleteone.action" method="post">
  		<input type="hidden" name="id" value="<s:property value="#checked.id"/>">
  		<input type="submit" value="删除" onclick="this.form.action='deleteone.action'">
  		</form>
  		</td>
  	 	</tr>
  	 	</s:iterator>
  		</table>
  </body>
</html>
