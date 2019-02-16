<%@page import="org.apache.tomcat.jni.Mmap"%>
<%@page import="com.mcare.dao.DashboardData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.mcare.model.MedicalDataModel"%>
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
<title>Analytical dashboard</title>
</head>
<body>
		<%@ include file = "../header.jsp" %>
		<%@ include file = "../navbar.jsp" %>
	<%
		// retrieve your list from the request, with casting 
		/* ArrayList<MedicalDataModel> list =new ArrayList<MedicalDataModel>();
		list = (ArrayList<MedicalDataModel>)request.getAttribute("list");
		
		// print the information about every category of the list
		for (MedicalDataModel model : list) {
			out.println(model.getUid());
			out.println(model.getName());
			out.println(model.getaSugar());
		} */
		DashboardData dData = new DashboardData();
		List<MedicalDataModel> mModel = null;
		try {
			mModel = dData.getHighRiskData();
		} catch (ClassNotFoundException e) {
			System.out.println("Not able to get data from MedicalData" + e.getMessage());
			e.printStackTrace();
		}
		int count = mModel.size();
	%>
	<div class="container">
		<h2 style="text-align: center">High Risk Patient Data</h2>
		<table class="table">
			<thead>
				<tr>
					<th>UUID</th>
					<th>Name</th>
					<th>Date</th>
					<th>Blood Pressure</th>
					<th>Sugar</th>
					<th>Platelets</th>
					<th>Protein</th>
					<th>HIV</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (MedicalDataModel model : mModel) {
				%>
				<tr class="warning">
					<td><%=model.getUid()%></td>
					<td><%=model.getName()%></td>
					<td><%=model.getDate()%></td>
					<td><%=model.getBp()%></td>
					<td><%=model.getaSugar()%></td>
					<td><%=model.getPlat()%></td>
					<td><%=model.getProtein()%></td>
					<td><%=model.getHiv()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<div class="container">
		<h5 style="color: red">
			Total Risk count:
			<%=count%>
		</h5>
	</div>
	
	<!-- For pie chart  -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<div id="piechartContainer" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
	<script src="http://localhost:8080/M-Care_Analytics/js/pieChart.js"></script>
</body>
</html>