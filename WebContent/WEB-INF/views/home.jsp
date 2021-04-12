<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- Linking CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="/bambii/resources/css/styles.css"/>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- GoogleFont -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
 	<style>
		.footer-basic {
			padding: 40px 0;
			background-color: #ffffff;
			color: #4b4c4d;
			margin-top:40px;
		}
		
		.footer-basic ul {
			padding: 0;
			list-style: none;
			text-align: center;
			font-size: 18px;
			line-height: 1.6;
			margin-bottom: 0;
		}
		
		.footer-basic .copyright {
			margin-top: 15px;
			text-align: center;
			font-size: 16px;
			color: #aaa;
			margin-bottom: 0;
		}
	</style>
    <title>Bambii</title>
</head>

<body id="homepage">
   <div>
        <img src="/bambii/resources/images/baby-feet.png" alt="Baby Feet Logo" class="logo-nav" style="background-color: white;">
        <nav id="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="home" style="font-size: 18pt; font-weight: bolder;">Bambii</a>
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
        <h1 style="color: rgb(199, 61, 93); margin-left: 40%;"><strong>Welcome to Bambii!</strong></h1>
    </div>  <br><br>
    <div id="homeButtons">
        <a href="feed"><input type="button" class="feed" value="Feed" style="margin-left: 35%;"/></a>
        <a href="sleep"><input type="button" class="sleep" value="Sleep"/></a>
        <a href="diaper"><input type="button" class="diaper" value="Diaper"/></a>
        <a href="pump"><input type="button" class="pump" value="Pump"/></a>
    </div>
    <div>
        <h2 id="feed-head" style="margin-bottom:20px">Feed Entries:</h2>
            <c:forEach items = "${model.feedingEntry}" var = "feeding" begin="0" end="3">
				<p style="background-color:#13a05ed2; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${feeding.feedType} Time: ${feeding.feedTime} Amount: ${feeding.feedAmount} Date: ${feeding.feedDate}</p>
    		</c:forEach>
        <h2 id="sleep-head" style="margin-bottom:20px; margin-top:50px">Sleep Entries:</h2>
         <c:forEach items = "${model.sleepEntry}" var = "sleep" begin="0" end="3">
   		 		<p style="background-color:#1190df; color:white; text-align:center; font-size:16pt;" >
   		 		Start: ${sleep.sleepStart} End: ${sleep.sleepEnd} Date: ${sleep.sleepDate} </p>
    		</c:forEach>
        <h2 id="diaper-head" style="margin-bottom:20px;margin-top:50px">Diaper Entries:</h2>
            <c:forEach items = "${model.diaperEntry}" var = "diaper" begin="0" end="3">
				<p style="background-color:#f5b70e; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${diaper.diaperType} Time: ${diaper.diaperTime} Date: ${diaper.diaperDate} Notes: ${diaper.diaperNotes}</p>
    		</c:forEach>
        <h2 id="pump-head" style="margin-bottom:20px; margin-top:50px">Pump Entries:</h2>
        	<c:forEach items = "${model.pumpEntry}" var = "pump" begin="0" end="3">
				<p style="background-color:#df375e; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${pump.pumpType} Time: ${pump.pumpTime} Notes: ${pump.pumpAmount} Date: ${pump.pumpDate}</p>
    		</c:forEach>

    </div>
	<div class="footer-basic">
        <footer>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="home">Home</a></li>
                <li class="list-inline-item"><a href="home">Services</a></li>
                <li class="list-inline-item"><a href="aboutUs">About Us</a></li>
                <li class="list-inline-item"><a href="home">Terms</a></li>
                <li class="list-inline-item"><a href="home">Privacy Policy</a></li>
            </ul>
            <p class="copyright">Bambii © 2021</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>