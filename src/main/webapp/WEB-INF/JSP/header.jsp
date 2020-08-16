<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title><%=request.getParameter("pagetitle") %></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{margin:0%;}
.navbar {
  overflow: hidden;
  background-color: #80aaff;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
	
<div class="navbar">
	<h1 align="center">Hospital Management</h1>
	<center>
  <div class="dropdown">
    <button class="dropbtn">Patient
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/add-patient">Add Patient</a>
      <a href="/get-patient">View Patients</a>
      <a href="/update-patient">Update Patient</a>
      <a href="/show-delete-patient">Delete Patientt</a>
      <a href="/show-billing">Patient Billing</a>
      <a href="/logout">Logout</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Pharmacy
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/show-patient-byId">View Patient</a>
      <a href="/show-medicine">Issue Medicine</a>
      <a href="/logout">Logout</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Diagnostics
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/show-patient-byId">View Patient</a>
      <a href="/show-diagnostic">Add Diagnostic</a>
      <a href="/logout">Logout</a>
    </div>
  </div>
</center>
</div>
