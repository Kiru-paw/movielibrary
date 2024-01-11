<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>ADMIN SIGN UP</header>
<form action="adminsignup" method="post">
<table>
<tr>
<td><label for = "admin-id"><b>Admin Id</b></label></td>
<td><input type = "number" name="adminid" id="admin-id"></td>
</tr>
<tr>
<td><label for = "admin-name"><b>Admin Name</b></label></td>
<td><input type = "text" name="adminname" id="admin-name"></td>
</tr>
<tr>
<td><label for = "admin-con"><b>Admin Contact</b></label></td>
<td><input type = "tel" name="admincontact" id = "admin-con"></td>
</tr>
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
<input type ="reset">

</form>

<%Integer result = (Integer)request.getAttribute("result"); %>
<%if(result!=null) {%>
<%=result + " account has been added to the admin database" %>
<%} %>

</body>
</html>