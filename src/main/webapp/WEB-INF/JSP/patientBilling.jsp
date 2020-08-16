<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%  String pageTitle="Patient Billing";%>
<jsp:include page="header.jsp" flush="true">
<jsp:param value="<%=pageTitle %>" name="pagetitle"/>
</jsp:include>
<style type="text/css">
th{background-color:#3d3d5c;color:white;}
</style>
</head>
<body style="background-color:#339BFF; ">
<h2 align="center">Patient Billing</h2>
<center>
<table border="1">
<tr>
<th>Patient Id</th><th>Name</th><th>Age</th><th>Address</th><th>DOJ</th><th>Date Of Discharge</th><th>Type of Room </th>
</tr>
<tr>
<td><form action="/get-patient-detail/4" method="get">
<input type="text" name="searpatientId" value="${patients.patientId }" required>
<input type="submit" value="search">
</form></td>
<c:if test="${patients!=null }"><td>${patients.pname}</td> </c:if>
<c:if test="${patients!=null }"><td> ${patients.age }</td></c:if>
<c:if test="${patients!=null }"><td>${patients.address }</td></c:if>
<c:if test="${patients!=null }"><td>${patients.dateOfAdd }</td></c:if>
<td><script>document.write(new Date().toLocaleDateString());</script></td>
<c:if test="${patients!=null }"><td>${patients.bedtype }</td></c:if>
</tr>
</table>
<h4>${msg1}</h4>
<div id="bill">
<c:if test="${patients!=null }">
<h4>No of Days: ${noOfday}</h4> <h4>Bill for Room: ${roomrent}</h4>
<br>


<h3>Pharmacy Charge</h3>
<table border="1">
<tr>
<th>Medicine</th><th>Quantity</th><th>Rate</th><th>Amount</th>
</tr>
<c:forEach items="${plist12}" var="p12">
<tr>
<td>${p12.medName }</td>
<td>${p12.quantity}</td>
<td>${p12.rateOfMed }</td>
<td>${p12.amount }
 </tr>
</c:forEach>
<tr><td colspan="3" align="right"><h5>Bill for Pharmacy</h5></td><td><h5> ${pharmaill }</h5></td>
</table>




<h3>Diagnostics Conducted</h3>
<table border="1">
<tr>
<th>Name Of Diagnostic</th><th>Amount</th>
</tr>
<c:forEach items="${plist2}" var="p">
<tr>
<td>${p.nameOfTest }</td>
<td>${p.amount }
 </tr>
</c:forEach>
<tr><td  align="right"><h5>Bill for Diagnostics</h5></td><td><h5> ${diagbill }</h5></td>
</table>


<h5>Grand Total :${total}</h5>
<c:if test="${patients.status.equalsIgnoreCase('Active') }">
<button><a href="/update-status-patient/${patients.patientId}">Confirm</a></button>
</c:if>
<c:if test="${patients.status.equalsIgnoreCase('Discharged') }">
<p style="color:red;"> Patient got discharged</p>
</c:if>
</c:if>
</div>
</center>
<script type="text/javascript">
document.getElementById('setcurdate').value= new Date();
</script>

</body>
</html>