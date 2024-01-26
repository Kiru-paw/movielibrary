<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int id=Integer.parseInt(request.getParameter("mid")) ;%>
<% Dao dao=new Dao();%>
<%Movie movie=dao.findMovieById(id); %>

<%String base64image =new String(Base64.getEncoder().encode(movie.getMovieimage())); %>
				<img src="data:image/jped;base64,<%=base64image %>"
					height="300px" width="300px">
		<%= movie.getMoviedescription()%>
</body>
</html>