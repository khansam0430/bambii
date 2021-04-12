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
    <script>
		// Create a "close" button and append it to each list item
		var myNodelist = document.getElementsByTagName("LI");
		var i;
		for (i = 0; i < myNodelist.length; i++) {
		  var span = document.createElement("SPAN");
		  var txt = document.createTextNode("\u00D7");
		  span.className = "close";
		  span.appendChild(txt);
		  myNodelist[i].appendChild(span);
		}
		
		// add an item to the list
		function newElement() {
		  var li = document.createElement("li");
		  var inputValue = document.getElementById("myInput").value;
		  var t = document.createTextNode(inputValue);
		  li.appendChild(t);
		  if (inputValue === '') {
		    alert("You must write something!");
		  } else {
		    document.getElementById("myUL").appendChild(li);
		  }
		  document.getElementById("myInput").value = "";
		
		  var span = document.createElement("SPAN");
		  var txt = document.createTextNode("\u00D7");
		  span.className = "close";
		  span.appendChild(txt);
		  li.appendChild(span);
		
		  for (i = 0; i < close.length; i++) {
		    close[i].onclick = function() {
		      var div = this.parentElement;
		      div.style.display = "none";
		    }
		  }
		}
	</script>
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
		
		.rlink{
		font-size:16pt;
		text-align:center;
		}
		
		h4{
		text-align:center;
		}
		
		.todoList{
		background-color: #72A98F;
		width:70%;
		height:350px;
		margin-left:15%;
		
		}
		
		.listDiv{
		text-align:center;
		}
		
		#myUL{
		color: white;
		font-size:12pt;
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
       <h1 style="color: navy; text-align:center;">
			<strong><u>Resources</u></strong><br><br>
		</h1>
    </div>  
    <div id="inputData">
      <div>
          <h3 class="rlink"><a href="https://www.babycenter.com/pregnancy-calendar">Baby Center's Pregnancy Calendar</a></h3>
          	<h4>This website allows you to see how your baby is developing week by week!</h4>
          <h3 class="rlink"><a href="https://kellymom.com/">Kelly Mom</a></h3>
          	<h4>Get Research based information about breastfeeding.</h4>
          <h3 class="rlink"><a href="https://mommylabornurse.com/biu-natural/">Birth It Up</a></h3>
          		<h4>This is a fantastic course filled with valuable information regarding insight on different birth plans.</h4>
          <h3 class="rlink"><a href="https://www.babycenter.com/">BabyCenter</a></h3>
          		<h4>BabyCenter is on the most well known forums for users. this website is also filled with topics for pregnancy and baby.</h4>
          <h3 class="rlink"><a href="https://www.babylist.com/">Baby List</a></h3>
          		<h4>A baby registry option that allows you to put multiple itmes from different stores, and yes that includes stores like Target!</h4>
      </div>
      
    </div>
  
  <div class="todoList">
	  <div class="listDiv" class="header" style="margin-top: 30px; padding-top:20px;">
		  <h2 style="margin:5px; font-size: 28pt; margin-bottom:20px; color: navy;"><strong>My To Do List</strong></h2>
		  <input type="text" id="myInput" style="font-size:16pt;" placeholder="Enter Text">
		  <span onclick="newElement()" class="addBtn" style="font-size:16pt";>Add</span>
	  </div>
	<br>
	<ul id="myUL">
	  <li>Buy Diapers</li>
	  <li>Go on a walk for 30 min</li>
	  <li>Stock up on wipes</li>
	  <li>Buy milk</li>
	</ul>
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