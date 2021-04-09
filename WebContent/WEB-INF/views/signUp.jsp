<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
        <div class="loginBackSignUp">
            <div id="formId">
                <form action="home">
                 <!--  action="action_page.php" method="post"  -->
                  
                    <div class="sign-up-form">
                        <div class="imgcontainer">
                            <img src="/bambii/resources/images/baby-feet.png" alt="Baby Feet Logo" class="logoSU">
                            <br>
                            <h2 style="font-size: 36pt; font-weight: bolder; margin-bottom: 40pt;">Bambii</h2>
                            <i><h4>Bambii is designed to simplify tracking your baby's important <br>
                                information and exciting milestones-all in one app.</h4></i>
                        </div>
                        <div>
                            <label for="uname" class="label" style="color: black; font-size: 14pt;">Username</label><br>
                            <input id="user" type="user" class="input" placeholder="Create your Username"> <br>
                            <label for="pass" class="label" style="color: black; font-size: 14pt;" >Password</label> <br>
                            <input id="pass" type="password" class="input" data-type="password" placeholder="Create your password"> <br>
                            <label for="pass" class="label" style="color: black; font-size: 14pt;">Child's Name</label> <br>
                            <input id="user" type="child" class="input" placeholder="Enter Child's Name"> <br>
                        </div>
                         <a href="home" style="color: white;"><button id="signupButton" type="submit" value="Sign Up" class="signupbtn">Sign Up</button></a><br>
                        <label for="tab-1" id="notMember">Already a Member?</label><br>
                        <a href="index"><button id="loginButton" type="button">Login</button></a><br>
                    </div>
                </form> 
            </div>
        </div>
    </div>

    <!-- <div>Icons made by <a href="" title="Icongeek26">Icongeek26</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>    </div> -->
</body>
</html>