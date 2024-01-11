<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Update Movie</h2>
<% Movie m = (Movie)request.getAttribute("movie");  %>
<form action = "updatemovie" method="post" enctype="multipart/form-data">
<table>
<tr>
<td><label for = "movie-id"><b>Movie Id</b></label></td>
<td><input type = "number" name="movieid" id="movie-id" value="<%= m.getMovieid() %>" readonly></td>
</tr>
<tr>
<td><label for = "movie-name"><b>Movie Name</b></label></td>
<td><input type = "text" name="moviename" id="movie-name" value="<%= m.getMoviename() %>"></td>
</tr>
<tr>
<td><label for = "movie-price"><b>Movie Price</b></label></td>
<td><input type = "number" name="movieprice" id = "movie-price" value="<%= m.getMovieprice() %>"></td>
</tr>
<tr>
<td><label for = "movie-rating"><b>Movie Rating</b></label></td>
<td><input type = "number" name="movierating" id="movie-rating" value="<%= m.getMovierating() %>"></td>
</tr>
<tr>
<td><label for = "movie-genre"><b>Movie Genre</b></label></td>
<td><input type = "text" name="moviegenre" id="movie-genre" value="<%= m.getMoviegenre() %>"></td>
</tr>
<tr>
<td><label for = "movie-language"><b>Movie Language</b></label></td>
<td><input type = "text" name="movielanguage" id="movie-language" value="<%= m.getMovielanguage() %>"></td>
</tr>
<tr>
<td><label for = "movie-image"><b>Movie Genre</b></label></td>
<td><input type = "file" name="movieimage" id="movie-image" ></td>
</tr>

</table>
<input type="submit">
<input type ="reset">

<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
	<img  src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px" > 

</form>

</body>
</html>