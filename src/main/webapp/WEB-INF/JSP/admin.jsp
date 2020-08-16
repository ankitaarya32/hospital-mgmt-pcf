<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#main{
width: 100%;
height: 100%;}
#left{width: 50%;
height: 100%;
float:right;
}
#right{width: 50%;
height: 100%;
float:left;}

#med-left{
box-sizing: border-box;
width: fit-content;
}
#diag-con{
box-sizing: border-box;
width: fit-content;
}

#med-right{
box-sizing: border-box;
width: 50%;
height: 100%;
float:left;
}
#diagnos{
box-sizing: border-box;
width: 50%;
height: 100%;
float: right;
}
label{color:red;}

</style>
</head>
<body>
<h2>Welcome Admin</h2>
<div>
<a href="/logout">Logout</a>
</div>
<div id="main">
<div id="right">
<div id="med-left">
<h2>Add Medicine</h2>
<form action="/admin1" method="Post">
MedicineId: <input type="text" name="MedicineId" value="101"><br>
<label >insert 3 more digit in medicine id</label><br>
MedicineName: <input type="text" name="MedicineName"><br>
Quantity: <input type="number" name="Quantity"><br>
RateOfMed: <input type="text" name="RateOfMed"><br>
<input type="submit" value="Submit">
</form>
</div>

<div id="diag-con">
<h2>Add Diagnostic</h2>
<form action="/admin2" method="Post">
TestId: <input type="text" name="TestId" value="201">
<br>
<label>insert 3 more digit in Test id</label><br>
Name Of Diagnostic: <input type="text" name="NameOfTest"><br>
Amount: <input type="text" name="Amount"><br>
<input type="submit" value="Submit1">
</form>
</div>
<div style="margin-top: 10%; style=color:green;">

${err} 
</div>
</div>

<div id="left">
<div id="med-right">
<table>
<tr><th>Medicine Id</th><th>Medicine Name</th><th>Delete</th></tr>
<c:forEach items="${meds }" var="p">
<tr>
<td>${p.medicineId }</td>
<td>${p.medicineName }</td>
<td><a href="/admin/2?id=${p.medicineId }">delete</a></td>
</tr>
</c:forEach>
</table>
</div>

<div id="diagnos">
<table>
<tr><th>Test Id</th><th>Test Name</th><th>Delete</th></tr>
<c:forEach items="${diag }" var="p">
<tr>
<td>${p.testId }</td>
<td>${p.nameOfTest }</td>
<td><a href="/admin/1?id=${p.testId }">delete</a></td>
</tr>
</c:forEach>
</table>
</div>

</div>

</div>

</body>
</html>