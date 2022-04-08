<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>employeeform</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/admin/shopsdetails">Home</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <sf:form method="post" modelAttribute="shops">
		<table border="1" class="table table-striped table-bordered">


			
					<tr>
						<td>Enter Shop Name</td>
						<td><input type="text" name="shopName" required="required"/></td>
					</tr>

					<tr>
						<td>Enter Owner Name</td>
						<td><input type="text" name="ownerName" required="required"/></td>
					</tr>
					<tr>
						<td>Enter Salon Location</td>
						<td><input type="text" name="locations" required="required"/></td>
					</tr>
					<tr>
						<td>Enter Salon  Area</td>
						<td><input type="text" name="areas" required="required" /></td>
					</tr>
					<tr>
						<td>Enter Salon Address</td>
						<td><input type="text" name="addresses" rows="10" cols="30" placeholder="Give your Salon Address" required="required" /></td>
					</tr>
					<tr>
						<td>Enter Status</td>
						<td><input type="text" name="status" /></td>
					</tr>


			<tr>
				<td><input type="submit" value="Register New Shop" /></td>
			</tr>

		</table>
	</sf:form>
<div class="hint-text">Already Filled Form<a href="/shopkeeper/viewAppointments">Click here</a></div>
</div>
</body>
</html>
