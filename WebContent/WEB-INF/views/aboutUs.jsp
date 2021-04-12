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
        <h1 style="color: rgb(199, 61, 93); text-align: center;"><strong>About Us</strong></h1>
    </div>  
    <div id="infoDiv"> 
        Bambii is a mobile-first application designed to simplify tracking your baby's important information 
        and exciting milestones for their development. Bambii provides a comprehensive overview so Users can 
        compare previous entries with current ones to see their baby's development. This information can be 
        accessed by both Parents using separate devices, and even others they wish to give access to 
        (care-givers, grandparents, etc). That way, even when you are away from your baby, you know exactly what
        is going on. This application also aims to simplify recording important information about your child 
        so when you are at the doctors office, you can easily access everything they are asking for. Bambii
        aims to make life simpler so you can enjoy and understand your baby's development. <br><br>
        This idea was created from a real-life scenario. From the birth of my two nephews, I was able to see 
        first-hand the problem that these new parents encountered. One couple used a baby tracking app whilst 
        another didn't by stating it was too complex and time consuming. After 3 months of being parents, I asked 
        both couples about their experiences. The couple who used the app said that they would like something 
        with a better User Interface and was simpler and easier to use. The couple who didn't use an app said 
        they wish they had. <br><br>
        Since then, the idea to create Bambii was in my mind and that is why Bambii exists. 
        To make the lives of new parents easier while maintaining all the important development and milestones
        for their baby.
    </div>
    <div id="resources">
        Resources Used:
        <div>Icons made by <a href="" title="Icongeek26">Icongeek26</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

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