<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- Linking CSS Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="/bambii/resources/css/styles.css" />
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- GoogleFont -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<title>Bambii</title>
</head>

<body id="homepage">
	<div>
		<img src="/bambii/resources/images/baby-feet.png" alt="Baby Feet Logo"
			class="logo-nav" style="background-color: white;">
		<nav id="navbar">
			<div class="navbar-header">
				<a class="navbar-brand" href="home"
					style="font-size: 18pt; font-weight: bolder;">Bambii</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="home">Home</a></li>
				<li><a href="aboutUs">About Us</a></li>
				<li><a href="resources">Resources</a></li>
				<li><a href="index">Log Out</a></li>
			</ul>
		</nav>
	</div>
	<div>
		<h1 style="color: navy; text-align: center;">
			<strong><u>Update a Sleep Entry</u></strong><br>
			<br>
			<br>
		
		</h1>
	</div>
	<div id="inputData-sleep">
		<form action = "${model.Sleep.sId}/save" method="POST">
		<h3 style="text-align:center; color:#1190df;"><strong>Sleep Start:</strong></h3>
		<input value="${model.Sleep.sleepStart}" type="text" class="time" name="sleepStart" placeholder="Time" style="width:20%;
				margin-left:40%;"/>
            <h3 style="text-align:center; color:#1190df;"><strong>Sleep End:</strong></h3>
            <input value="${model.Sleep.sleepEnd}" type="text" class="amount" name="sleepEnd" placeholder="Amount" style="width:20%;
            		margin-left:40%;"/>
            <h3 style="text-align:center; color:#1190df;"><strong>Enter Date:</strong></h3>
            <input  value="${model.Sleep.sleepDate}" type="text" class="date" name="sleepDate" placeholder="Date" style="width:20%;
            		margin-left:40%;"/>
            <input value ="${model.Sleep.sId}" name="sleepSid" type="hidden" /><br>
            <button type="submit" class="submit" style="background-color:#1190df; width: 8%; border-radius: 25px; margin-left: 46%;">Submit</button>
		</form>
	</div>
</body>
</html>