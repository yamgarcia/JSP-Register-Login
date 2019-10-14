<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello</title>
</head>
<body>

	<a href=""> Home </a>
	
	<a href="http://localhost:8081/JEETut1/login.jsp"> Login </a>
	
	<a href=""> Logout </a>
	<br>
	
	<a href="http://localhost:8081/JEETut1/register.jsp"> Register </a>

<h3>
	Thank you for the info
</h3>

<label> First Name: </label>
${cust.firstName}<br>

<label> Last Name: </label>
${cust.lastName}<br>

<label> Phone: </label>
${cust.phone}<br>
	
	
</body>
</html>