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
import dto.Movie;
import dto.User;

@WebServlet("/checkpay")
public class CheckPayment extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	Movie m = (Movie) session.getAttribute("movie");
	User u = (User) session.getAttribute("user");
	System.out.println(u);
	double price = Double.valueOf(req.getParameter("userprice"));
	Dao dao = new Dao();
	System.out.println(price);
	try {
		if(price==m.getMovieprice())
		{
			if(dao.checkMovie(m.getMovieid(), u.getUserid())) {
				System.out.println(dao.checkMovie(m.getMovieid(), u.getUserid()));
			int result = dao.buyMovie(m, u);
			if(result>0) {
				System.out.println(result);
				req.setAttribute("message", "congrats you have brought the movie ");
				System.out.println(price);
				req.setAttribute("movies", m);
				req.setAttribute("user", u);
				RequestDispatcher d = req.getRequestDispatcher("userhome.jsp");
				d.include(req, resp);	
			}
		}
			else {
				System.out.println(dao.checkMovie(m.getMovieid(), u.getUserid()));
				req.setAttribute("message", " You have already bought the movie");
				RequestDispatcher r = req.getRequestDispatcher("userhome.jsp");
				r.include(req, resp);
				}
			}
		
		else {
			req.setAttribute("message", " price is mismatch,try again");
			System.out.println(price);

			RequestDispatcher r = req.getRequestDispatcher("buymovie.jsp");
			r.include(req, resp);
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
