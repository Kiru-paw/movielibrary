<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
body {
            background-image: url('./home1.jpg');
	        background-size: cover;
	        background-repeat: no-repeat;
	        display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
 .login-container {
            width: 300px;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            
        }  
        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        } 
        .form-group button {
            background-color: blue;
            color: whitesmoke;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        #sub:hover {
	        color: blue;
          }
          #message{
          color: red;}    
</style>
<body>
<div class="login-container">
<form action="adminlogin" method="post">
<center><header><h2><b><u>Admin Login</u></b></h2></header></center>

<div class="form-group"><label for = "admin-mail"><b>Admin Email</b></label>
<input type = "email" name="adminmail" id="admin-mail"></div>

<div class="form-group"><label for = "admin-pwd"><b>Admin Password</b></label>
<input type = "password" name="adminpassword" id="admin-pwd"></td></div>

<center><div class="form-group" id = "sub"><button type="submit"><b>Submit</b></button></div></center>

</form>
<h4><b><div id="message"><%String message = (String) request.getAttribute("message"); %>
<%if(message!=null){ %>
<%= message %>
<%} %></div></b></h4>
</div>
</body>
</html>