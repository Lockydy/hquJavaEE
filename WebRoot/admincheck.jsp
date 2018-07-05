<%@page import="com.hqulrx.model.exist"%>
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
    
    <title>My JSP 'admincheck.jsp' starting page</title>
    
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
  <jsp:useBean id="stued" class="com.hqu.javalrx.jdbc.AdminService"></jsp:useBean>
  	<%
  	List stus=stued.queryAll();
  	//out.print(stus.size());
  	Iterator iter=stus.iterator();
  	 %>
    <td align="center">物料库存情况</td>
  		<table>
  		<tr><td>id</td><td>物料代码</td><td>物料名</td><td>单位</td><td>数量</td></tr>
  		 <%
  	 int i=0;
  	 while(iter.hasNext()){
  	 	exist student=(exist)iter.next();
  	 	%>
  	 	<tr <%if (i%2==0) {%> bgcolor="#F0F8FF" <%}%>>
  	 	<td><%=student.getId() %></td>
  	 	<td><%=student.getDaima() %></td>
  	 	<td><%=student.getName() %></td>
  	 	<td><%=student.getUnit() %></td>
  	 	<td><%=student.getNumber() %></td>
  	 	<td>
  	 	<form action="modiform.action" method="post">
  		<input type="hidden" name="id" value="<%=student.getId() %>">
  		<input type="submit" value="修改" onclick="this.form.action='modiform.action'">
  		</form>
  		</td>
  		<td>
  	 	<form action="deleteform.action" method="post">
  		<input type="hidden" name="id" value="<%=student.getId() %>">
  		<input type="submit" value="删除" onclick="this.form.action='deleteform.action'">
  		</form>
  		</td>
  	 	</tr>
  	 	<%
  	 	i++;
  	 }
  	  %>
  		</table>
  		<!-- <s:set value="#request.xist" id="xist" ></s:set>
  		<s:iterator value="xist" id="xist">
  		<tr><td><s:property value="#xist.id"/></td>
  		<td><s:property value="#xist.daima"/></td>
  		<td><s:property value="#xist.name"/></td>
  		<td><s:property value="#xist.unit"/></td>
  		<td><s:property value="#xist.number"/></td> </s:iterator>-->
  		<!-- <form action="modiform.action" method="post">
  		<input type="hidden" name="id" value="<s:property value="#xist.id"/>">
  		<input type="submit" value="修改" onclick="this.form.action='modiform.action'"></td>
  		</form>
  	 	</tr> -->
  </body>
</html>
