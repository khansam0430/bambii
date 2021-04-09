<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <h1 style="color: rgb(199, 61, 93); margin-left: 20px;"><strong>Extra</strong></h1>
    </div>  
    <div id="inputData">
        <form>
            <input type="button" class="height" value="Height"/>
            <input type="button" class="weight" value="Weight"/>
            <input type="button" class="meds" value="Meds"/>
            <input type="button" class="other" value="Other"/>
            <br><br>
            <input type="text" class="time" placeholder="Time" style="width:20%;"/>
            <input type="text" class="amount" placeholder="Amount" style="width:20%;"/>
            <input type="text" class="date" placeholder="Date" style="width:20%;"/>
            <input type="text" class="notes" placeholder="Notes" style="width:20%;"/>
            <button type="submit" class="submit" style="background-color:#7c43cc; width: 8%; border-radius: 25px; margin-left: 50%;">Submit</button>
        </form>
    </div>
    <div>
        <h2 id="extra-head" style="margin-top: 100px;">Extra Entries:</h2>
    </div>
</body>
</html>