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
</head>
<body>
<h1>Home Page</h1>
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
<th>Buy</th>
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
	<td><a href="buymovie?id=<%=m.getMovieid()%>">Buy</a> </td>
	</tr>
	
	<% } %>
</table>

<a href="addmovie.jsp">View_All_Movies</a>
<a href = "logout">LogOut</a>
</body>
</html>