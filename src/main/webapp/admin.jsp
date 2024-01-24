<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url('./cinema-4213751_640.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	justify-content: center;
	display: flex;
	align-items: center;
	height: 100vh;
	margin: 0;
}
#admin{
border: 10px double black;
display: inline-block;
padding: 50px;
}
.anchor{
color: blue;
}

</style>
</head>
<body>
<div id ="admin">
<h2>WELCOME TO ADMIN PAGE</h2>
<center><b>Click <a href ="adminlogin.jsp" class="anchor">here</a> for Admin Login</b></center> <br>
<center><b>Click <a href ="adminsignup.jsp" class="anchor">here</a> for Admin Signup</b></center>
</div>
</body>
</html>