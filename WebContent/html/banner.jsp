<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
	  height:30%;
      margin: auto;
  }
  </style>
</head>
<body>
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="image/mother-banner-5.jpg" alt="M-Care-1" width="600"
						height="300">
					<div class="carousel-caption">
						<h3>M-Care Analytics</h3>
						<p>ANM visit in local community</p>

					</div>
				</div>

				<div class="item">
					<img src="image/mother-banner-6.jpg" alt="M-Care-2" width="600" height="300">
					<div class="carousel-caption">
						<h3>M-Care Analytics</h3>
						<p>ANM and local ASHA worker</p>
						
					</div>
				</div>

				<div class="item">
					<img src="image/mother-banner-1.jpg" alt="Flower" width="600" height="300">
					<div class="carousel-caption">
						<h3>M-Care Analytics</h3>
						<p>woman carrying baby</p>
					</div>
				</div>


			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

</body>
</html>