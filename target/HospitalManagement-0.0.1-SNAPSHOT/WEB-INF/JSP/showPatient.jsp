<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%  String pageTitle="Show Patient";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
<style type="text/css">
th{background-color:#3d3d5c;color:white;}
</style>
</head>
<body style="background-color:#339BFF; ">
<div style="text-align:center;">${message}</div>
<h2 align="center">Show Patient</h2>
<table align="center" border="1">
<tr><th>PatientId</th><th>Patient Name</th><th>Age</th><th>Address</th><th>DOJ</th><th>Type of Room</th></tr>
<c:if test="${plist!=null }">
<c:forEach items="${plist}" var="p">
<tr>
<td style="background-color:white;">${p.patientId}</td>
<td style="background-color:white;">${p.pname}</td>
<td style="background-color:white;">${p.age}</td>
<td style="background-color:white;">${p.address}</td>
<td style="background-color:#a3a3c2;">${p.dateOfAdd }</td>
<td style="background-color:#a3a3c2;">${p.bedtype }</td>
</tr>
</c:forEach>
</c:if>
</table>
</body>
</html>