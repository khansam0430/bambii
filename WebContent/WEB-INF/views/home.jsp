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
                <li><a href="index">Log Out</a></li>
            </ul>
        </nav>
    </div>
    <div>
        <h1 style="color: rgb(199, 61, 93); margin-left: 20px;"><strong>Welcome, User</strong></h1>
    </div>  
    <div id="homeButtons">
        <a href="feed"><input type="button" class="feed" value="Feed"/></a>
        <a href="sleep"><input type="button" class="sleep" value="Sleep"/></a>
        <a href="diaper"><input type="button" class="diaper" value="Diaper"/></a>
        <a href="pump"><input type="button" class="pump" value="Pump"/></a>
        <a href="extra"><input type="button" class="extra"  value="Extra"/></a>
    </div>
    <div>
        <h2 id="feed-head" style="margin-bottom:20px">Feed Entries:</h2>
            <c:forEach items = "${model.feedingEntry}" var = "feeding" begin="0" end="3">
				<p style="background-color:#13a05ed2; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${feeding.feedType} Time: ${feeding.feedTime} Amount: ${feeding.feedAmount} Date: ${feeding.feedDate}</p>
    		</c:forEach>
        <h2 id="sleep-head" style="margin-bottom:20px">Sleep Entries:</h2>
         <c:forEach items = "${model.sleepEntry}" var = "sleep" begin="0" end="3">
   		 		<p style="background-color:#1190df; color:white; text-align:center; font-size:16pt;" >
   		 		Start: ${sleep.sleepStart} End: ${sleep.sleepEnd} Date: ${sleep.sleepDate} </p>
    		</c:forEach>
        <h2 id="diaper-head" style="margin-bottom:20px">Diaper Entries:</h2>
            <c:forEach items = "${model.diaperEntry}" var = "diaper" begin="0" end="3">
				<p style="background-color:#f5b70e; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${diaper.diaperType} Time: ${diaper.diaperTime} Date: ${diaper.diaperDate} Notes: ${diaper.diaperNotes}</p>
    		</c:forEach>
        <h2 id="pump-head" style="margin-bottom:20px;">Pump Entries:</h2>
        	<c:forEach items = "${model.pumpEntry}" var = "pump" begin="0" end="3">
				<p style="background-color:#df375e; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${pump.pumpType} Time: ${pump.pumpTime} Notes: ${pump.pumpAmount} Date: ${pump.pumpDate}</p>
    		</c:forEach>
        <h2 id="extra-head">Extra Entries:</h2>

    </div>

</body>
</html>