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

<body>
    <div>
       <img src="/bambii/resources/images/baby-feet.png" alt="Baby Feet Logo" class="logo-nav" style="background-color: white;">
        <nav id="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="index" style="font-size: 18pt; font-weight: bolder;">Bambii</a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="aboutUsNoLog">About Us</a></li>
              </ul>
        </nav>
    </div>
    <div id="main">
        <div class="loginBack">
            <div id="formId">
                <form action="home" method="POST">
                 
                    <div class="imgcontainer">
                        <img src="/bambii/resources/images/baby-feet.png" alt="Baby Feet Logo" class="logo">
                        <br>
                        <h2 style="font-size: 36pt; font-weight: bolder; margin-bottom: 40pt;">Bambii</h2>
                       <i><h4>Bambii is designed to simplify tracking your baby's important <br>
                             information and exciting milestones-all in one app.</h4></i>
                    </div>
                    <div class="form-container">
                        <label for="uname"><b>Username</b></label><br>
                        <input type="user" placeholder="Enter Username" name="username" required><br>
                        <label for="psw"><b>Password</b></label><br>
                        <input type="password" placeholder="Enter Password" name="psw" required><br>
                        <button id="loginButton" type="submit">Login</button><br>
                        <label id="notMember" for="tab-1">Not a Member?</label><br>
                        <a href="signUp" style="color: white;"><button id="signupButton" type="button" class="signupbtn">Sign Up</button></a>
                    </div>                    
                </form> 
            </div>
        </div>
    </div>

</body>
</html>