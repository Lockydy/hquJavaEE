<%@page import="com.hqulrx.model.userlogin"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	userlogin user=(userlogin)session.getAttribute("user");
	if(user==null)
	{
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%}
	 %>
