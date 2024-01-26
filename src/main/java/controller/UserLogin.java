package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.User;
@WebServlet("/userlogin")
public class UserLogin extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email = req.getParameter("usermail");
	String password = req.getParameter("userpassword");
	Dao dao = new Dao();
	try {
		User user = dao.findUserByEmail(email);
		
		if(user!=null) {
			if(user.getUserpassword().equals(password)) {
				HttpSession session = req.getSession();
				session.setAttribute("user", dao.findUserByEmail(email));
				session.setAttribute("username", user.getUsername());
				req.setAttribute("movies", dao.getAllMovies());
				RequestDispatcher d = req.getRequestDispatcher("userhome.jsp");
				d.include(req, resp);
			}
			else
			{
				req.setAttribute("message", "* password is incorrect");
				RequestDispatcher d = req.getRequestDispatcher("userlogin.jsp");
				d.include(req, resp);
			}
		}
		else
		{
			req.setAttribute("message", "* Email is incorrect");
			RequestDispatcher d = req.getRequestDispatcher("userlogin.jsp");
			d.include(req, resp);
		}
	}  catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
