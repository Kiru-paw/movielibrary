<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body {
    font-family: sans-serif;
    background-image: url('./home1.jpg');
	background-size: cover;
	background-repeat: no-repeat;
    margin: 0;
    padding: 0;
}

.container {
    width: 300px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 8px;
}

input {
    padding: 8px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: blue;
    color: white;
    padding: 5px;
    border: medium;
    border-radius: 2px;
    cursor: pointer;
}

button:hover {
    background-color: cadetblue;
    color:black;
}

        
</style>

</head>
<body>
<div class = "container">

<form action="adminsignup" method="post">
<center><header><h2><b><u>Admin Signup</u></b></h2></header></center>
<label for = "admin-id"><b>Admin Id</b></label>
<input type = "number" name="adminid" id="admin-id" required>

<label for = "admin-name"><b>Admin Name</b></label>
<input type = "text" name="adminname" id="admin-name" required>


<label for = "admin-con"><b>Admin Contact</b></label>
<input type = "tel" name="admincontact" id = "admin-con" required>


<label for = "admin-mail"><b>Admin Email</b></label>
<input type = "email" name="adminmail" id="admin-mail" required>


<label for = "admin-pwd"><b>Admin Password <br></b>(minimum 8 characters)</label>
<input type = "password" name="adminpassword" id="admin-pwd" required>


<button type="submit">Submit</button><br>
<button type ="reset">Reset</button>

</form>

<%Integer result = (Integer)request.getAttribute("result"); %>
<%if(result!=null) {%>
<%=result + " account has been added to the admin database" %>
<%} %>
</div>
</body>
</html>