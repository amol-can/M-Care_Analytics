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
<title>Medical Test Record</title>
</head>
<body>
	<%@include file="../header.jsp" %>
	<%@include file="../navbar.jsp" %>

      <div class="container">
         <h2>Medical Test Data</h2>
         <form action="medicalTest">
            <div class="form-group">
               <label for="uid">Enter UID*:</label>
               <input type="text" class="form-control" id="uid" placeholder="Enter UID Number" name="uid">
            </div>
            <div class="form-group">
               <label for="name">Patient Name:</label>
               <input type="name" class="form-control" id="name" placeholder="Enter Name of the patient" name="name">
            </div>
            <label for="start">Today's date:</label>
            <div class="checkbox">
               <input type="date" id="date" name="date"
                  value="2019-02-15"
                  min="2019-02-15" max="2050-12-31"><br>          
            </div>
            <div class="form-inline">
               <label for="email">BP:</label>
               <input type="name" class="form-control" id="bp" placeholder="Enter count" name="bp">
               <label for="email">Sugar Check:</label>
               <input type="name" class="form-control" id="bSugar" placeholder="Sugar quantity before lunch" name="bSugar">
               <label for="email">Sugar Check:</label>
               <input type="name" class="form-control" id="aSugar" placeholder="Sugar quantity After lunch" name="aSugar">
               <label for="email">Platelets:</label>
               <input type="name" class="form-control" id="plat" placeholder="Enter Count" name="plat">
            </div>
            <br>
            
            <div class="form-inline">
            <label for="BloogG">Blood Group:</label>
            <select class="form-inline" id="blood">
               <option value="AP">A+</option>
               <option value="OP">O+</option>
               <option value="BP">B+</option>
               <option value="ABP">AB+</option>
               <option value="AN">A-</option>
               <option value="ON">O-</option>
               <option value="BN">B-</option>
               <option value="ABN">AB-</option>
            </select>
            
            <label for="weight">Weight: </label>
            <input type="text" class="form-control" id="weight" name="weight" placeholder="enter weight of mother">
            
            <label for="protein">Protein: </label>
            <input type="text" class="form-control" id="protein" name="protein" placeholder="enter protein level of mother">
            
            </div>
            
            <label for="BloogG">HIV Test:</label>  
            <div class="form-inline">
               <input type="radio" name="hiv" id="hiv" value="positive" >Positive
               <input type="radio" name="hiv" id="hiv" value="negative" checked> Negative<br><br>
            </div>
           <label for="BloogG">ANM Comments:</label> <br>
           <textarea rows="7" cols="80" id="anmComment" placeholder="Enter minimum 20 words about patient ..."> </textarea>
           </br>
            <button type="submit" class="btn btn-primary">Submit</button><br>
         </form>
      </div>
   </body>
</html>