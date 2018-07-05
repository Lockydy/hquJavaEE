<%@page import="com.hqulrx.model.userlogin"%>
<%@page import="com.hqulrx.model.exist"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userID.jsp' starting page</title>
    
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
    <jsp:useBean id="stuer" class="com.hqu.javalrx.jdbc.AdminService"></jsp:useBean>
  	<%
  	List stus=stuer.queryUSER();
  	//out.print(stus.size());
  	Iterator iter=stus.iterator();
  	 %>
    <td align="center">账户情况</td>
  		<table>
  		<tr><td>账号</td><td>使用人</td></tr>
  		 <%
  	 int i=0;
  	 while(iter.hasNext()){
  	 	userlogin student=(userlogin)iter.next();
  	 	%>
  	 	<tr <%if (i%2==0) {%> bgcolor="#F0F8FF" <%}%>>
  	 	<td><%=student.getId() %></td>
  	 	<td><%=student.getName() %></td>
  	 	<td>
  	 	<form action="deleteUsername.action" method="post">
  		<input type="hidden" name="id1" value="<%=student.getId() %>">
  		<input type="submit" value="删除" onclick="this.form.action='deleteUsername.action'">
  		</form>
  		</td>
  	 	</tr>
  	 	<%
  	 	i++;
  	 }
  	  %>
  		</table>
  </body>
</html>
