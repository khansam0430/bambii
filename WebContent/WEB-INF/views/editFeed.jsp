<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<form action = "${model.Feed.id}/save" method="POST">
            <input type="radio"  id="bottle" name="feedType" value="Bottle" style="height:25px; width:25px;
            	margin-left: 30%;"/>
            <label for id="bottle" style="font-size: 18pt; margin-right: 1%; color:#1ca565">Bottle</label>
            <input type="radio"  id="solids" name="feedType" value="Solids" style="height:25px; width:25px"/>
            <label for id="solids" style="font-size: 18pt;margin-right: 1%; color:#1ca565">Solids</label>
            <input type="radio" id="leftb" name="feedType" value="Left Breast" style="height:25px; width:25px"/>
            <label for id="leftb" style="font-size: 18pt;margin-right: 1%;color:#1ca565;">Left Breast</label>
            <input type="radio" id="rightb" name="feedType" value="Right Breast" style="height:25px; width:25px"/>
            <label for id="rightb" style="font-size: 18pt;margin-right: 1%;color:#1ca565;">Right Breast</label>
            <br><br>
            <input value="${model.Feed.feedTime}" type="text" class="time" name="feedTime" placeholder="Time" style="width:20%;"/>
            <input value="${model.Feed.feedAmount}" type="text" class="amount" name="feedAmount" placeholder="Amount" style="width:20%;"/>
            <input  value="${model.Feed.feedDate}" type="text" class="date" name="feedDate" placeholder="Date" style="width:20%;"/>
            <input value ="${model.Feed.id}" name="feedId" type="hidden" />
            <button type="submit" class="submit" style="background-color:#1ca565; width: 8%; border-radius: 25px;">Submit</button>
        </form>
</body>
</html>