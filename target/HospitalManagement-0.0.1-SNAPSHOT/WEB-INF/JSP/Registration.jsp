<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%  String pageTitle="Patient Registration";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
</head>
<body style="background-color:#339BFF; ">
<center>
<h2>Patient Registration</h2>
<table>
<form:form method="POST" modelAttribute="patient" action="/addPatient" name="patient" id="myForm" >
<tr><td>Patient Adhar<span style="color:red;">*</span></td><td> <form:input path="padhar"  required="true" placeholder="Insert Adhar" minlength="9" maxlength="9" name="adhar" pattern="[0-9]+" title="Please insert digit" value="1"/></td></tr>
<tr><td>Patient Name<span style="color:red;">*</span></td><td> <form:input path="pname" id="pname" required="true"  /></td></tr>
<tr><td>Patient Age<span style="color:red;">*</span></td><td> <form:input path="age" id="age" required="true" pattern="[0-9]+" title="Please insert digit" value="1" maxlength="3"/></td></tr>
<tr><td>Date of Admission<span style="color:red;">*</span></td><td> <form:input path="DateOfAdd" type="date" required="true" /></td></tr>
<tr><td>Type of bed<span style="color:red;">*</span></td><td> <form:select path="bedtype" required="true">
<form:option value="">--Select--</form:option>
<form:option value="General Ward">General Ward</form:option>
<form:option value="Semi Sharing">Semi Sharing</form:option>
<form:option value="Single Room">Single Room</form:option>
</form:select></td></tr>
<tr><td>Address</td><td>
<form:textarea path="Address"/></td></tr>
<tr><td>State<span style="color:red;">*</span></td><td>
<form:select path="State" required="true">
<form:option value="">--Select--</form:option>
<form:option value="bihar">Bihar</form:option>
<form:option value="U P">Uttar Pradesh</form:option>
<form:option value="M p">Madhya Pradesh</form:option>
<form:option value="Odisha">Odisha</form:option>
<form:option value="Other">Other</form:option>
</form:select></td></tr>
<tr><td>City<span style="color:red;">*</span></td><td>
<form:select path="City" required="true">
<form:option value="">--Select--</form:option>
<form:option value="Patna">Patna</form:option>
<form:option value="Gorakhpur">Gorakhpur</form:option>
<form:option value="Bhopal">Bhopal</form:option>
<form:option value="Berhampur">Berhampur</form:option>
<form:option value="Others">Others</form:option>
</form:select></td></tr>
<tr><td>Status<span style="color:red;">*</span></td><td><form:radiobutton path="Status" name="restat" value="Active" required="true"/>Active
<form:radiobutton path="Status" name="restat" value="Discharged"/>Discharged</td></tr>

<tr><td><form:button>Submit</form:button></td><td>
<input type="button" value="Reset" onclick="myFunction()"></td></tr>
</form:form>
</table>

<h5>${msg}</h5>
</center>
<script>
function myFunction() {
  document.getElementById("myForm").reset(); 
}

</script>
</body>
</html>