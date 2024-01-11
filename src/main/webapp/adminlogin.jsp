<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="adminlogin" method="post">
<header><h2><b><u>Welcome To Admin Login</u></b></h2></header>
<table>
<tr>
<td><label for = "admin-mail"><b>Admin Email</b></label></td>
<td><input type = "email" name="adminmail" id="admin-mail"></td>
</tr>
<tr>
<td><label for = "admin-pwd"><b>Admin Password</b></label></td>
<td><input type = "password" name="adminpassword" id="admin-pwd">(minimum 8 characters)</td>
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