<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%  String pageTitle="Delete Patient";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
</head>
<body style="background-color:#339BFF; ">
<center>
<h2>Delete Patient</h2>
<form action="/get-patient-detail/1" method="get">
Patient Id: <input type="text" name="searpatientId" required>
<input type="submit" value="search">
</form>
<br>
<br>
<form:form method="POST" modelAttribute="patient" action="/del-patient" name="patient">
<form:input path="padhar" type="hidden" value="${patient.padhar }"/>
<table>
<tr><td>
Patient Name</td><td> <form:input path="pname" value="${patient.pname }" readonly="true"/></td></tr>
<tr><td>Patient Age</td><td><form:input path="age" value="${patient.age }" readonly="true"/></td></tr>
<tr><td>Date of Admission</td><td><form:input path="DateOfAdd" type="date" value="${patient.dateOfAdd }" readonly="true"/></td></tr>
<tr><td>Type of bed</td><td> <form:input path="bedtype" required="" value="${patient.bedtype }" readonly="true"/>
</td></tr>
<tr><td>Address</td><td>
<form:textarea path="Address" value="${patient.address }" readonly="true"/></td></tr>
<tr><td>State</td><td>
<form:input path="State" required="" value="${patient.state }" readonly="true"/>
</td></tr>
<tr><td>City</td><td>
<form:input path="City" required="" value="${patient.city }" readonly="true"/>
</td></tr>
<tr><td>Status</td><td><form:input path="Status" value="${patient.status }" readonly="true"/></td></tr>
<tr><td colspan="2"><form:button style="background-color:#80aaff;margin-left:30%">Delete</form:button></td></tr>
</table>
</form:form>

<h4>${msg1}</h4>
</center>
</body>
</html>