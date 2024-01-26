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
    background-color: grey;
    padding: 100px;
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
    margin-bottom: 26px;
    border: 1px solid #ccc;
    border-radius: 4px;
    cursor: pointer;
}

input:hover{
background-color: lightgrey;
}
textarea:hover{
background-color: lightgrey;
}
button {
    background-color: blue;
    color: white;
    padding: 5px;
    border: medium;
    border-radius: 2px;
    cursor: pointer;
    width: 100px;
    
}

button:hover {
    background-color: cadetblue;
    color:black;
}
</style>
</head>
<body>
<div class="container">
<%if(request.getSession(false)!=null){ %>
<form action = "addmovie" method="post" enctype="multipart/form-data">
<center><header><h2><b><u>Add Movie</u></b></h2></header></center>

<label for = "movie-id"><b>Movie Id</b></label>
<input type = "number" name="movieid" id="movie-id">

<label for = "movie-name"><b>Movie Name</b></label>
<input type = "text" name="moviename" id="movie-name">

<label for = "movie-price"><b>Movie Price</b></label>
<input type = "number" name="movieprice" id = "movie-price">

<label for = "movie-rating"><b>Movie Rating</b></label>
<input type = "number" name="movierating" id="movie-rating">

<label for = "movie-genre"><b>Movie Genre</b></label>
<input type = "text" name="moviegenre" id="movie-genre">

<label for = "movie-language"><b>Movie Language</b></label>
<input type = "text" name="movielanguage" id="movie-language">

<label for = "movie-image"><b>Movie Genre</b></label>
<input type = "file" name="movieimage" id="movie-image">

<label for = "movie-description"><b>Movie Description</b></label>
<input type ="text" id="movie-description" name="moviedescription" style="height:150px">



<br><center><b> <button type="submit">Submit</button></b></center> <br>
<center><b><button type ="reset">Reset</button></b></center>

</form>

<% }
else { %>

<%
request.setAttribute("message", "Access Denied, Admin login required");
RequestDispatcher d = request.getRequestDispatcher("adminlogin.jsp");
d.include(request, response);
%>
<% }%>
</div>
</body>
</html>