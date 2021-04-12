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
        <h1 style="color: #f5b70e; text-align:center;"><strong>Diaper</strong></h1>
   		<br>
   		<br>
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
   		 	<div style= "display: flex;">
			<form>
					<button type="button" onClick="window.location='editDiaper/${diaper.dId}'" style="border: #ff9800; color: #ff9800;
				font-size: 16pt; margin-left: 750px; width: 80px; height: 65px; border: 2px solid; border-radius: 10px;  text-align:center; ">
					Edit</button>
			</form>
			<form action="deleteDiaper" method="POST">
				<input type="submit" value="Delete" style="border: #f44336; color: red; font-size: 16pt;
					border-radius: 10px; height: 64px; margin-left: 20px; border: 2px solid; margin-top: 9px";/> 
				<input name="deletedId" value=${diaper.dId} type="hidden" />
			</form>
			</div>
				</p>
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