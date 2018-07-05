<%@page import="com.hqulrx.model.getform"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工系统</title>
    
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
  <jsp:useBean id="stuer" class="com.hqu.javalrx.jdbc.UserService"></jsp:useBean>
  	<%
  	List stu=stuer.queryAllStu();
  	Iterator iter=stu.iterator();
  	 %>
  		<td align="center">各员工表单申请情况</td>
  		<table>
  		<tr><td>申请表id</td><td>出/入</td><td>物料代码</td><td>物料名</td><td>单位</td><td>数量</td><td>申请日期</td><td>申请人</td><td>备注</td><td>管理员审核结果</td></tr>
  		<!-- <s:set value="#request.form" id="form" ></s:set>
  		<s:iterator value="form" id="form"> -->
	<%
  	 	int i=0;
  	 	while(iter.hasNext()){
  	 	getform student=(getform)iter.next();
  	 	%>
  	 	<tr <%if (i%2==0) {%> bgcolor="#F0F8FF" <%}%>>
  	 	<td><%=student.getId() %></td>
  	 	<td><%if(student.getOutterin()==true)out.print("入库");else out.print("出库"); %></td>
  	 	<td><%=student.getDaima() %></td>
  	 	<td><%=student.getName() %></td>
  	 	<td><%=student.getUnit() %></td>
  	 	<td><%=student.getNumber() %></td>
  	 	<td><%=student.getDate() %></td>
  	 	<td><%=student.getWho() %></td>
  	 	<td><%=student.getMemory() %></td>
  	 	<td><%=student.getResult() %></td>
  	 	</tr>
  	 	<%
  	 	i++;
  	 }
  	  %>
  	 	<!-- <tr><td><s:property value="#form.id"/></td>
  		<td><s:if test="#form.outterin==true">入库</s:if>
		<s:if test="#form.outterin==false">出库</s:if></td>
  		<td><s:property value="#form.daima"/></td>
  		<td><s:property value="#form.name"/></td>
  		<td><s:property value="#form.unit"/></td>
  		<td><s:property value="#form.number"/></td>
  		<td><s:property value="#form.date"/></td>
  		<td><s:property value="#form.who"/></td>
  	 	<td><s:property value="#form.memory"/></td>
  	 	<td><s:property value="#form.result"/></td>
  	 	</tr> </s:iterator>-->
  		</table>
  </body>
  
</html>
