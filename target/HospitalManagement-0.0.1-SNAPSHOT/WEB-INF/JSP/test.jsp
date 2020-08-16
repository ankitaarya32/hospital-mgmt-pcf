<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
 <table>
<tr><th>Medicine name</th><th>Medicine Id</th></tr>
<tr>
<td><form action="/test-medicine" method="get">
<input type="text" name="search"  id="search">
<input type="submit" value="search">
</form></td>
<c:if test="${med!=null }"><td>${med.medicineId}</td> </c:if>
</tr>
<tr>
<td><form method="get">
<input type="text" name="med1" id="med1" >
<input type="submit" value="search" id="mybtn">
</form></td>
<td >${val}</td>
</tr>
<tr>
<td><form method="post">
<input type="text" name="med1" id="med1" >
<input type="submit" value="search" id="mybtn">
</form></td>
<td >${val}</td>
</tr>
</table>
${jsonform }

<script type="text/javascript">
$(document).ready(function() {
	$("#mybtn").click(function() {
	alert("succeess");
	$.ajax({
	url: "/test-medicine",
	type: "get",
	data: {
	med1:$('#med1').val(),
	success : function(data){
	alert(JSON.parse(jsonform));
	}
	}
	});
	});
	});
</script>

<%--
<script type="text/javascript">
var str=document.getElementById('getquery').value
console.log('str');
</script> 

<input type="text" id="fnum" onInput="getval()">
<input type="text" id="snum" onInput="getval()">

<p id="d1"></p>
<p id="d2"></p>
<script type="text/javascript">
function getval(){
var n1=Number(document.getElementById('fnum').value);
var n2=0;
	n2=Number(document.getElementById('snum').value);
document.getElementById("d1").innerText=n1;

var myclass=Java.type("com.tcs.assignment.testjava");
var m=myclass.sumNum(n1+n2);
document.getElementById("d2").innerText=Number(m);
}
</script>
</body>
--%>

<%-- 
<body >
<input type="text" id="fnum" onInput="getval()">
<input type="text" id="snum" onInput="getval()">
<p id="d1"></p>
<p onload="fun1()"></p>
</body>


<script type="text/javascript">
function fun1()
{var n1=23;
var n2="def"
     document.write("<%=fun2(Integer.parseInt(n1),n2)%>");
 return true;
}
</script>
--%>
</html>