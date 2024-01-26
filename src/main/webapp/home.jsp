<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table{
background-color: cadetblue;
}
body{
font-family: sans-serif;
background-color: whitesmoke;
}
button {
    background-color: grey;
    padding: 5px;
    border: medium;
    border-radius: 2px;
    cursor: pointer;
}

button:hover {
    background-color: cadetblue;
    color:black;
    box-shadow: 0 0 30px cadetblue; 
}
.anchor{
color: blue;
}
td,th{
text-align: center;
}

</style>
</head>

<body>
<center><header><h2><b><u>HOME</u></b></h2></header></center>
<%List<Movie> movies = (List)request.getAttribute("movies"); %>
<table border = "5px" class="table">
<tr>
<th>Movie ID</th>
<th>Movie Name</th>
<th>Movie Price</th>
<th>Movie Rating</th>
<th>Movie Genre</th>
<th>Movie Language</th>
<th>Movie Image</th>
<th>Delete</th>
<th>Edit</th>
<th>Movie Description</th>
</tr>

<% for(Movie m : movies){ %>
	
	<tr>
	<td><%= m.getMovieid() %></td>
	<td><%= m.getMoviename() %></td>
	<td><%= m.getMovieprice() %></td>
	<td><%= m.getMovierating() %></td>
	<td><%= m.getMoviegenre() %></td>
	<td><%= m.getMovielanguage() %></td>
	
	<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
	<td><img  src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px" > </td>
	<td><a href="deletemovie?id=<%=m.getMovieid()%>" class="anchor">Delete</a> </td>
	<td><a href="editmovie?id=<%=m.getMovieid()%>" class="anchor">Edit</a> </td>
	<td><%=m.getMoviedescription() %></td>
	
	</tr>
	
	<% } %>
</table>
<br>
<center><b><button type="submit"><a href="addmovie.jsp" class="anchor">Addmovie</a></button>
<button type="submit"><a href="logout" class="anchor">Logout</a></button></b></center>

</body>
</html>