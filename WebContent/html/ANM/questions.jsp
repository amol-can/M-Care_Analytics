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
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../navbar.jsp" %>
	<div class="container">
		<center>
			<h2>Patient Questionnaire Form</h2>
		</center>
		<br> <label>1.Is this your first pregnancy?</label>
		<div class="form-inline">
			<input type="radio" id="pregCheck" name="pregCheck" value="yes"
				checked>Yes <input type="radio" id="pregCheck"
				name="pregCheck" value="no"> No<br>
		</div>
		<fieldset class="form-inline">
			<label for="exampleInputEmail1" class="bmd-label-static">1.1
				If No? How many times have you been pregnant?</label> <input type="text"
				class="form-control" id="text1" placeholder="Enter Count">
		</fieldset>

		<fieldset class="form-inline">
			<label for="exampleInputEmail1" class="bmd-label-static">2.(If
				any live births) Did your baby (babies) have any health or medical
				problems at birth? If yes, what were they?</label> <input type="text"
				class="form-control" id="text2" placeholder="Describe here">
		</fieldset>

		<fieldset class="form-inline">
			<label for="exampleInputEmail1" class="bmd-label-static">2.1
				How much did your last baby (babies) weigh at birth?</label> <input
				type="text" class="form-control" id="text3" placeholder="Weight?">
		</fieldset>

		<label>2.2 How many weeks pregnant were you at delivery? </label>
		<fieldset class="form-inline">
			<label for="exampleInputEmail1" class="bmd-label-static">2.2
				How many weeks pregnant were you at delivery?</label> <input type="text"
				class="form-control" id="text" placeholder="Weeks?">
		</fieldset>
		<label>3. Have you seen a medical provider for this pregnancy?
		</label>
		<div class="form-inline">
			<input type="radio" id="isMprovider" name="isMprovider" value="yes"
				checked>Yes <input type="radio" id="isMprovider"
				name="isMprovider" value=""> No<br>
		</div>
		<h4>*Alcohol use/Abuse*</h4>
		<label>4. Have you ever smoked or used tobacco or nicotine
			products? </label>
		<div class="form-inline">
			<input type="radio" id="isSmoke" name="isSmoke" value="Yes" checked>Yes
			<input type="radio" id="isSmoke" name="isSmoke" value="No">
			No<br>
		</div>
		<label>4.1(If yes) Did you use during the three months before
			you became pregnant? </label>
		<div class="form-inline">
			<input type="radio" id="SmokeBefore" name="SmokeBefore" value="Yes"
				checked>Yes <input type="radio" id="SmokeBefore"
				name="SmokeBefore" value="No"> No<br>
		</div>
		<label>4.2 Does anyone smoke inside your home and/or car? </label>
		<div class="form-inline">
			<input type="radio" id="helthSmoke" name="helthSmoke" value="Yes"
				checked>Yes <input type="radio" id="helthSmoke"
				name="helthSmoke" value="No"> No<br>
		</div>
		<h4>*Mental Health*</h4>
		<fieldset class="form-group">
			<label for="exampleInputEmail1" class="bmd-label-placeholder">5.Have
				you ever received mental health services or counseling?</label>
			<div class="form-inline">
				<input type="radio" id="isMental" name="isMental" value="Yes"
					checked>Yes <input type="radio" id="isMental"
					name="isMental" value="No"> No<br>
			</div>
			<label>5.1 In the last month, have you felt down, depressed,
				or hopeless?</label>
			<div class="form-inline">
				<input type="radio" id="isMentalCheck" name="isMentalCheck"
					value="Yes" checked>Yes <input type="radio"
					id="isMentalCheck" name="isMentalCheck" value="No"> No<br>
			</div>
		</fieldset>
		<label>6. Is there any information or resources you would like
			us to help you with during this pregnancy? </label>
		<div class="form-inline">
			<input type="radio" id="isHelp" name="isHelp" value="Yes" checked>Yes
			<input type="radio" id="isHelp" name="isHelp" value="No"> No<br>
		</div>
		<center>
			<button type="submit" class="btn btn-success">
				Submit <span class="badge"></span>
			</button>
			<button type="button" class="btn btn-primary">
				Reset <span class="badge"></span>
			</button>
		</center>
	</div>
</body>
</html>