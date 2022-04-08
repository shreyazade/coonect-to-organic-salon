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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
    
 body{
  background-image: url("/image/salonbgimg1.jpeg");
/*  background-size: cover;
 background-repeat: no-repeat; */
  }
 
   a:link, a:visited {
  background-color: Darkgoldenrod;
  color: white;
padding: 10px 24px;
  text-align: center;
  text-decoration: white;
  display : inline-block
  
}

a:hover, a:active {
  background-color: red;
}
.btn {
padding: 10px 18px;
}
</style>
 
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color:white">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/shopkeeper/appointments">Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li class="active"><a href="<spring:url value='/user/login'/>" >Log Out</a></li>
    </ul>
  </div>
</nav>

<div class="container">
<caption><h2 style="color:gold">Employee List</h2></caption>
<table border="1" class="table table-striped table-bordered" >

		
			<tr>
				<th>Emp Id</th><th>Employee Name</th><th>Employee Mob No</th><th>Employee Experience</th><th>Salon Name</th><th>Status</th><th>Add</th><th>Update</th><th>Delete</th>
			</tr>
		
		
 	<c:forEach var="e" items="${requestScope.employee_list}">
		
		
		<tr class="info">
				<td> ${e.empId}</td>
				<td>${e.empName}</td>
				<td>${e.empMobNo}</td>
				<td>${e.empExperience}</td>
				<td>${e.salonName}</td>
				<td>${e.status}</td>
				<td style="background-color:none"><a href="<spring:url value='/shopkeeper/addemployee?eid=${e.empId}'/>" class="btn btn-primary" role="button">Add</a><br></td>
				<td style="background-color:none"><a href="<spring:url value='/shopkeeper/updateemployee?eid=${e.empId}'/>" class="btn btn-primary" role="button">Update</a></td>
				<td style="background-color:none"><a href="<spring:url value='/shopkeeper/removeemployee?eid=${e.empId}'/>" class="btn btn-primary" role="button">Delete</a></td>
	
			</tr>
		</c:forEach>
			
	</table>
	</div>


</body>
</html>
