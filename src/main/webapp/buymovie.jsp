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
<%HttpSession s=request.getSession(); %>
<%  Movie m=(Movie)s.getAttribute("movie");%>

<form action="checkpay">

Enter amount to pay<input placeholder="you need to pay <%=m.getMovieprice() %>" name="userprice" type="number"><br>

<input type="submit" >pay amount
<%request.setAttribute("m", m); %>

</form>

<%String msg=(String)request.getAttribute("message"); %>
	<%if(msg!=null){ %>
	<%= msg %>
	<%request.setAttribute("movies", request.getAttribute("movies")); %>
	<a href="userhome.jsp">home</a>
	<%} %>
</body>
</html>