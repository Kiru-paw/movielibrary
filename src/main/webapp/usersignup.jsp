<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>USER SIGN UP</header>
<form action="usersignup" method="post">
<table>
<tr>
<td><label for = "user-id"><b>User Id</b></label></td>
<td><input type = "number" name="userid" id="user-id"></td>
</tr>
<tr>
<td><label for = "user-name"><b>User Name</b></label></td>
<td><input type = "text" name="username" id="user-name"></td>
</tr>
<tr>
<td><label for = "user-con"><b>User Contact</b></label></td>
<td><input type = "tel" name="usercontact" id = "user-con"></td>
</tr>
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
<input type ="reset">

</form>

<%Integer result = (Integer)request.getAttribute("result"); %>
<%if(result!=null) {%>
<%=result + " account has been added to the user database" %>
<%} %>
</body>
</html>