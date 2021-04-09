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
        <h1 style="color: rgb(199, 61, 93); margin-left: 20px;"><strong>Diaper</strong></h1>
    </div>  
    <div id="inputData">
        <form action = "addDiaper" method="POST">
       		<input type="radio"  id="wet" name="diaperType" value="Wet" style="height:25px; width:25px;
            	margin-left: 41%;"/>
        	  <label for id="wet" style="font-size: 18pt; margin-right: 1%; color:#f5b70e">Wet</label>
            <input type="radio"  id="wet" name="diaperType" value="Wet" style="height:25px; width:25px"/>
              <label for id="dirty" style="font-size: 18pt; margin-right: 1%; color:#f5b70e">Dirty</label>
           <input type="radio"  id="both" name="diaperType" value="Both" style="height:25px; width:25px"/>
              <label for id="both" style="font-size: 18pt; margin-right: 1%; color:#f5b70e">Both</label>
            <br><br>
            <input type="text" class="time" name="diaperTime" placeholder="Time" style="width:20%;"/>
            <input type="text" class="date" name="diaperDate" placeholder="Date" style="width:20%;"/>
            <input type="text" class="notes" name="diaperNotes" placeholder="Notes" style="width:20%;"/>
            <button type="submit" class="submit" style="background-color:#f5b70e; width: 8%; border-radius: 25px;">Submit</button>
        </form>
    </div>
    <div>
        <h2 id="diaper-head" style="margin-top: 70px; margin-bottom:20px;">Diaper Entries:</h2>
            <c:forEach items = "${model.diaperEntry}" var = "diaper" begin="0" end="3">
				<p style="background-color:#f5b70e; color:white; text-align:center; font-size:16pt;" >
   		 		Type: ${diaper.diaperType} 
   		 		Time: ${diaper.diaperTime} Date: ${diaper.diaperDate}
   		 		 Notes: ${diaper.diaperNotes}
				</p>
    		</c:forEach>
    </div>
</body>
</html>