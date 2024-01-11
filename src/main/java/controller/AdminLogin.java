package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Admin;
import dto.Movie;
@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email = req.getParameter("adminmail");
	String password = req.getParameter("adminpassword");
	
	Dao dao = new Dao();
	try {
		Admin admin = dao.findByEmail(email);
		if (admin!=null ) {
			if (admin.getAdminpassword().equals(password)) {
				List<Movie> movies = dao.getAllMovies();
				req.setAttribute("movies", movies);
				RequestDispatcher d = req.getRequestDispatcher("home.jsp");
				d.include(req, resp);
			} else {
				req.setAttribute("message", "* password is incorrect");
				RequestDispatcher d = req.getRequestDispatcher("adminlogin.jsp");
			
				d.include(req, resp);
			}
			
		}
		
		else {
			req.setAttribute("message", "* Email is incorrect");
			RequestDispatcher d = req.getRequestDispatcher("adminlogin.jsp");
			d.include(req, resp);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
}
}
