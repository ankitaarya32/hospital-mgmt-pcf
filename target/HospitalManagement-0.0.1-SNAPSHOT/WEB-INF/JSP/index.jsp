<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%  String pageTitle="Home";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
<meta charset="ISO-8859-1">

</head>
<body style="background-color:#339BFF;">
<center>
<h1>Welcom To Hospital Management</h1>
<br>
<br>
<div style=" border:3px solid black;">
<label>User: ${uname}</label>
<br>
<br>
<label>Role: ${role }</label>

</div>
</center>
</body>
</html>