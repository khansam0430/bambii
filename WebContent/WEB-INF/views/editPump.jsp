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
		<h1 style="color: navy; text-align:center;">
			<strong><u>Edit a Pump Entry</u></strong><br><br><br>
		</h1>
	</div>
	<div>
		<form action = "${model.Pump.pId}/save" method="POST">
		<h3 style="margin-left: 43%; color:#df375e"><strong>Update Pump Type:</strong></h3><br>
            <input type="radio"  id="leftb" name="pumpType" value="Left Breast" style="height:25px; width:25px;
            	margin-left: 40%;"/>
            <label for id="leftb" style="font-size: 18pt; margin-right: 1%; color:#df375e">Left Breast</label>
            <input type="radio"  id="rightb" name="pumpType" value="Right Breast" style="height:25px; width:25px"/>
            <label for id="rightb" style="font-size: 18pt;margin-right: 1%; color:#df375e">Right Breast</label>    
            <br><br>
            <h3 style="margin-left: 37%; color:#df375e"><strong>Update Pump Time, Amount and Date:</strong></h3><br>
            <input value="${model.Pump.pumpTime}" type="text" class="time" name="pumpTime" placeholder="Time" style="width:20%; margin-left:17%;"/>
            <input value="${model.Pump.pumpAmount}" type="text" class="date" name="pumpAmount" placeholder="Amount" style="width:20%;"/>
            <input  value="${model.Pump.pumpDate}" type="text" class="date" name="pumpDate" placeholder="Date" style="width:20%;"/>
            <input value ="${model.Pump.pId}" name="diaperDid" type="hidden" /><br><br>
            <button type="submit" class="submit" style="background-color:#df375e; margin-left:45%; width: 8%; border-radius: 25px;">Submit</button>
        </form>
       </div>
</body>
</html>