<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Add Movie</h2>
<%if(request.getSession(false)!=null){ %>
<form action = "addmovie" method="post" enctype="multipart/form-data">
<table>
<tr>
<td><label for = "movie-id"><b>Movie Id</b></label></td>
<td><input type = "number" name="movieid" id="movie-id"></td>
</tr>
<tr>
<td><label for = "movie-name"><b>Movie Name</b></label></td>
<td><input type = "text" name="moviename" id="movie-name"></td>
</tr>
<tr>
<td><label for = "movie-price"><b>Movie Price</b></label></td>
<td><input type = "number" name="movieprice" id = "movie-price"></td>
</tr>
<tr>
<td><label for = "movie-rating"><b>Movie Rating</b></label></td>
<td><input type = "number" name="movierating" id="movie-rating"></td>
</tr>
<tr>
<td><label for = "movie-genre"><b>Movie Genre</b></label></td>
<td><input type = "text" name="moviegenre" id="movie-genre"></td>
</tr>
<tr>
<td><label for = "movie-language"><b>Movie Language</b></label></td>
<td><input type = "text" name="movielanguage" id="movie-language"></td>
</tr>
<tr>
<td><label for = "movie-image"><b>Movie Genre</b></label></td>
<td><input type = "file" name="movieimage" id="movie-image"></td>
</tr>

</table>
<input type="submit">
<input type ="reset">

</form>

<% }
else { %>

<%
request.setAttribute("message", "Access Denied, Admin login required");
RequestDispatcher d = request.getRequestDispatcher("adminlogin.jsp");
d.include(request, response);
%>
<% }%>

</body>
</html>