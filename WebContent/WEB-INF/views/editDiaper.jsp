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
			<strong><u>Edit a Diaper Entry</u></strong><br><br><br><br>
		</h1>
	</div>
	<div>
		<form action = "${model.Diaper.dId}/save" method="POST">
		<h3 style="margin-left: 42%; color:#f5b70e"><strong>Update Diaper Type:</strong></h3><br>
            <input type="radio"  id="wet" name="diaperType" value="Wet" style="height:25px; width:25px;
            	margin-left: 40%;"/>
            <label for id="bottle" style="font-size: 18pt; margin-right: 1%; color:#f5b70e">Wet</label>
            <input type="radio"  id="wet" name="diaperType" value="Dirty" style="height:25px; width:25px"/>
            <label for id="dirty" style="font-size: 18pt;margin-right: 1%; color:#f5b70e">Dirty</label>
            <input type="radio" id="dirty" name="diaperType" value="Both" style="height:25px; width:25px"/>
            <label for id="both" style="font-size: 18pt;margin-right: 1%;color:#f5b70e;">Both</label>      
            <br><br>
            <h3 style="margin-left: 37%; color:#f5b70e"><strong>Update Diaper Time, Date and Notes:</strong></h3><br>
            <input value="${model.Diaper.diaperTime}" type="text" class="time" name="diaperTime" placeholder="Time" style="width:20%; margin-left:17%;"/>
            <input value="${model.Diaper.diaperDate}" type="text" class="date" name="diaperDate" placeholder="Date" style="width:20%;"/>
            <input  value="${model.Diaper.diaperNotes}" type="text" class="date" name="diaperNotes" placeholder="Amount" style="width:20%;"/>
            <input value ="${model.Diaper.dId}" name="diaperDid" type="hidden" /><br><br>
            <button type="submit" class="submit" style="background-color:#f5b70e; margin-left:45%; width: 8%; border-radius: 25px;">Submit</button>
        </form>
       </div>
</body>
</html>