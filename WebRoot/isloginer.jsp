<%@page import="com.hqulrx.model.adminform"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	adminform user=(adminform)session.getAttribute("user");
	if(user==null)
	{
	%>
	<jsp:forward page="admin.jsp"></jsp:forward>
	<%}
	 %>
