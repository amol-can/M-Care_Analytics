<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Mother Registration</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%@ include file="../navbar.jsp"%>

	<div class="container">
		<form action="/MotherRegistrationService" method="GET">
			<div class="form-group">
				<h1>Mother Registration Detail</h1> <br>
				
				<div class="form-group">
					<label for="text">Patient Name:</label> 
					<input type="text" class="form-control" id="mName" placeholder="Enter patient mother name" name="mName">
				</div>

				<div class="form-group">
					<label for="text">Hasband Name:</label> 
					<input type="text" class="form-control" id="hName" placeholder="Enter patient husband name" name="hName">
				</div>
				
				<div class="form-group">
					<label for="text">UID*:</label> 
					<input type="text" class="form-control" id="uid" placeholder="Enter unique Aadhar number" name="uid">
				</div>
				
				<div class="form-group">
					<label for="text">Mobile Number:</label> 
					<input type="text" class="form-control" id="mNumber" placeholder="Enter 10 digit mobile number" name="mNumber">
				</div>
				
				<div class="form-inline">
					<label for="text">DOB:</label> 
					<input type="date" class="form-control" id="dob" name="dob" value="2019-02-15"  min="2019-02-15" max="2050-12-31">         
           		</div>
			</div>
				
				<div class="form-inline">
					
					<label for="state">State:</label>
      				<select class="form-control" id="state">
        				<option value="Orissa">Orissa</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Karnatak">Karnatak</option>
						<option value="Tamilnadu">Tamilnadu</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
      				</select>
      				
      				<label for="district">District:</label>
      				<select class="form-control" id="district"> 
      					<option value="Sambalpur">Sambalpur</option>
						<option value="Puri">Puri</option>
      				</select>   
      				
      				<label for="town">Town:</label>
      				<select class="form-control" id="town">
      					<option value="Burla">Burla</option>
						<option value="Bhojpur">Puri</option> 
      				</select>
      				
      				<label for="village">Village:</label>
      				<select class="form-control" id="village"> 
      					<option value="Bamra ">Bamra</option>
						<option value="Kutarimal ">Kutarimal</option>
						<option value="Lariapali ">Lariapali</option>
						<option value="Mahulpali ">Mahulpali</option>
      				</select>		
      				
      			</div><br>
					
				
				<div class="form-group">
					<label for="text">Street Address:</label> 
					<input type="text" class="form-control" id="sAddress" placeholder="Enter street address of patient" name="sAddress">
				</div>
				
				<div class="form-group">
					<label for="text">Email Id:</label> 
					<input type="email" class="form-control" id="email" placeholder="Enter email id if available" name="email">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button> 
			</div>
		</form>
	</div>

</body>
</html>