<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body{background-color:#339BFF; }
#head{background-color:#80aaff;margin-top:-1.3em; }
#log{box-sizing: content-box;
width: 250px;
  height: 140px;
  padding: 20px;
  border: 2px solid black;
  margin:10% 40%;
  }
</style>
</head>
<body>
<div id="head">
<h1 align="center">Hospital Management</h1>
</div>
<div id="log" >
<table>
<tr><th colspan="2">Login</th></tr>
<form:form method="POST" modelAttribute="login" action="/checkLogin" name="login">
<tr>
<td>User Name</td><td> <form:input path="username" placeholder="username" required="true" /></td></tr>
<tr><td>Password </td><td> <form:input type="password" path="password" placeholder="password" required="true" /></td></tr>
<tr><td colspan="2"><input type="submit" value="Login" style="background-color:#80aaff;margin-left:30%"> </td></tr>
</form:form>
</table>
<h5>${ermsg }</h5>
</div>
</body>
</html>