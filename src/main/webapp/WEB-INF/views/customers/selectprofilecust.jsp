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
      <li class="active"><a href="/shopkeeper/appointments">Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>

<div class="container">

<caption><h2>User</h2></caption>
<table border="1" class="table table-striped table-bordered">

		
			<tr>
				<th>User Id</th><th>User Name</th><th>User Mob No</th><th>User EmailId</th><th>Address</th><th>Location</th><th>Update</th>
			</tr>
		
		
 	<c:forEach var="u" items="${requestScope.user}">
		
		
			<tr>
				<td> ${u.userId}</td>
				<td>${u.userName}</td>
				<td>${u.userMobNo}</td>
				<td>${u.userEmailId}</td>
				<td>${u.address}</td>
				<td>${u.location}</td>
				
				<td><a href="<spring:url value='/customers/updatecustomer?uid=${u.userId}'/>">Update</a></td>
				
				
			</tr>
		</c:forEach>
				
	</table>
	</div>


</body>
</html>
