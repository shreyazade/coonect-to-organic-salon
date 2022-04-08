<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
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
    <style type="text/css">
   body{
  background-image: url("/image/salonbgimg3.jpeg");
 background-size: cover;
 background-repeat: no-repeat;
  }
  table { background-color:yellowgreen; }
tr { background-color: yellow; }
td { background-color:yellowgreen; }
  </style>
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
<sf:form method="post" modelAttribute="slot">
		<table border="1" class="table table-striped table-bordered" style="width:50%">

</br>
			
					<tr>
						<td><b>Enter Slot Name</b></td>
						<td><input type="text" name="slotName" /></td>
					</tr>


					<tr>
						<td><b>Enter Slot Time</b></td>
						<td><input type="text" name="slotTime" /></td>
					</tr>

					<tr>
						<td><b>Enter chair Available</b></td>
						<td><input type="number" name="chaireAvilable" /></td>
					</tr>
					<tr>
						<td><b>Enter Slot Sequence</b></td>
						<td><input type="number" name="slotSequence" /></td>
					</tr>


			<tr>
				<th colspan="2"><input type="submit" value="Add Slot" class="btn btn-success"/></th>
			</tr>

		</table>
	</sf:form>
	</div>

</body>
</html>
