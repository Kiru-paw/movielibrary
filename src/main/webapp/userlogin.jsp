<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="userlogin" method="post">
<header><h2><b><u>Welcome To User Login</u></b></h2></header>
<table>
<tr>
<td><label for = "user-mail"><b>User Email</b></label></td>
<td><input type = "email" name="usermail" id="user-mail"></td>
</tr>
<tr>
<td><label for = "user-pwd"><b>User Password</b></label></td>
<td><input type = "password" name="userpassword" id="user-pwd">(minimum 8 characters)</td>
</tr>
</table>
<input type="submit">

</form>

<%String message = (String) request.getAttribute("message"); %>
<%if(message!=null){ %>
<%= message %>
<%} %>
</body>
</html>