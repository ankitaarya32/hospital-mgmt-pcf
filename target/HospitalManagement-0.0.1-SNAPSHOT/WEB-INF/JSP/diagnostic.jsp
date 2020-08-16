<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:if test="${diag ==null }">
<script type="text/javascript">
$(document).ready(function(){
	$("#issue").hide();
	$("#issue1").click(function(){
		$("#issue").show();
	});
	
});
</script>
</c:if>
<meta charset="ISO-8859-1">
<%  String pageTitle="Patient Diagnostic";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
<style type="text/css">
th{background-color:#3d3d5c;color:white;}
</style>
</head>
<body style="background-color:#339BFF; ">
<center>
<h2>Patient Diangnostics</h2>
<table border="1">
<tr>
<th>Patient Id</th><th>Name</th><th>Age</th><th>Address</th><th>DOJ</th><th>Type of Room </th>
</tr>
<tr>
<td><form action="/get-patient-detail/3" method="get">
<input type="text" name="searpatientId" value="${patients.patientId }">
<input type="submit" value="search">
</form></td>
<c:if test="${patients!=null }"><td>${patients.pname}</td> </c:if>
<c:if test="${patients!=null }"><td> ${patients.age }</td></c:if>
<c:if test="${patients!=null }"><td>${patients.address }</td></c:if>
<c:if test="${patients!=null }"><td>${patients.dateOfAdd }</td></c:if>
<c:if test="${patients!=null }"><td>${patients.bedtype }</td></c:if>
</tr>
</table>

<br>
<c:if test="${not empty plist1}">
<h3>Diagnostics Conducted</h3>

<table border="1">
<tr>
<th>Name Of Diagnostic</th><th>Amount</th><th>Delete</th>
</tr>
<c:forEach items="${plist1}" var="p">
<tr>
<td>${p.nameOfTest }</td>
<td>${p.amount }</td>
<td><a href="/del-patient-diag/${p.diag_pait_id}"> Delete</a></td>
 </tr>
</c:forEach>
</table>
</c:if>



<button id="issue1">Issue Diagnostic</button>
 
<%--
<div id="issue" >
<table border="1">
<tr>
<th>Name Of Diagnostic</th><th>Amount</th>
</tr>


<tr>

<td><form  method="get">
<input type="hidden" name="searpatientId" value="${patients.patientId }" >

<select name="getmed" onchange="myfun()" id="diagnose" required>
<option value="">--Select--</option>
<c:forEach items="${diaglist}" var="p1">
<option value="${p1.nameOfTest}">${p1.nameOfTest}</option>
</c:forEach>
</select>
<input type="submit" value="Diagnostic" >
</form></td>
<td><input type="text" name="quan" oninput="myfun()" id="quant" value="${diag.amount}"></td>

 </tr>
 
</table>

<form action="/get-patient-detail/3" method="get">
<input type="hidden" name="searpatientId" value="${patients.patientId }" >
<input type="hidden" name="getmed"  value="${diag.nameOfTest }">
<input type="submit" value="ADD">
</form>  

<button><a href="/get-patient-detail/3?searpatientId=${patients.patientId }">Refresh</a></button>
</div>
 --%>

<div id="issue" >
<table border="1">
<form action="/get-patient-detail/3" method="get">
<tr>
<th>Name Of Diagnostic</th><th>Amount</th></tr>
<tr>
<td>
<input type="hidden" name="searpatientId" value="${patients.patientId }" >
 <select id="test_id" name="getmed" class="input100 form-control">
 <option value="">--Select--</option>
<c:forEach items="${diaglist}" var="test">
<option value="${test.nameOfTest}">${test.nameOfTest}</option>
</c:forEach>
</select>
</td>
<td><input type="submit" value="ADD"></td>
</tr>
</form>
</table>
<button><a href="/get-patient-detail/3?searpatientId=${patients.patientId }">Refresh</a></button>

</div>
<br>

<h4>${msg1}</h4>
</center>
</body>
</html>