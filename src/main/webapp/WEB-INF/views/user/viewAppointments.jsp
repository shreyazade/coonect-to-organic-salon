<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>





<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect To Organic Salon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-dark bg-success">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
   
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <table border="1" class="table table-striped table-bordered">

		<caption><h2>Appointments List</h2></caption>
		<tr>
					<th>Appoint Id</th><th>Date</th><th>Services</th><th>Slot</th><th>Employee</th>
				</tr>
 	<c:forEach var="a" items="${requestScope.alist}">
			<tr>
				<td>${a.appointId}</td>
				<td>${a.regDate}</td>
				<c:forEach var="serv" items="${a.services}">
				<td>${serv.serviceName}</td>
				</c:forEach> 
				<c:forEach var="slot" items="${a.slots}">
				<td>${slot.slotName}</td>
				</c:forEach>
				<c:forEach var="emp" items="${a.employee}">
				<td>${emp.empName}</td>
				</c:forEach> 
				 
			</tr>
		</c:forEach> 	
	</table>
	</div>
	
</body>
</html>
