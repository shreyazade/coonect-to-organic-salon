<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect To Organic Salon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body{
  background-image: url("/image/organicsalon.jpg");
 background-size: cover;
 
 background-repeat: no-repeat;
  }
  table { background-color:linen; }
tr { background-color: yellow; }
td { background-color:linen; }

</style>
</head>
<body>

<nav class="navbar navbar-inverse">
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
 <sf:form method="post" modelAttribute="shops">
		<table border="1" class="table table-striped table-bordered" style="width:50%;" >


			
					<tr>
						<td><b>Enter Salon Name</b></td>
						<td><input type="text" name="shopName" required="required"/></td>
					</tr>

					<tr>
						<td><b>Enter Owner Name</b></td>
						<td><input type="text" name="ownerName" required="required"/></td>
					</tr>
					<tr>
						<td><b>Enter Location</b></td>
						<td><input type="text" name="locations" required="required"/></td>
					</tr>
					<tr>
						<td><b>Enter Area</b></td>
						<td><input type="text" name="areas" required="required" /></td>
					</tr>
					<tr>
						<td><b>Enter Address</b></td>
						<td><input type="text" name="addresses" rows="10" cols="30" placeholder="Give your Salon Address" required="required" /></td>
					</tr>
					<tr>
						<td><b>Enter Status</b></td>
						<td><input type="text" name="status" /></td>
					</tr>


			<tr>
				<th colspan="2"><input type="submit" value="Register New Shop" class="btn btn-success" class="bold_text"/></th>
			</tr>

		</table>
	</sf:form>
<div class="hint-text"><b>Already Registered <a href="/shopkeeper/appointments">Click here</a></b></div>
</div>

</body>
</html>
