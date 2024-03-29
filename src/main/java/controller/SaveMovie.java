package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.Dao;
import dto.Movie;
@MultipartConfig(maxFileSize = 5*1024*1024)
@WebServlet("/addmovie")
public class SaveMovie extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int movieid = Integer.parseInt(req.getParameter("movieid"));
	String moviename = req.getParameter("moviename");
	double movieprice = Double.parseDouble(req.getParameter("movieprice"));
	double movierating = Double.parseDouble(req.getParameter("movierating"));
	String moviegenre = req.getParameter("moviegenre");
	String movielanguage = req.getParameter("movielanguage");
	
	Part imagepart = req.getPart("movieimage");
	String moviedescription = req.getParameter("moviedescription");
	
	Movie movie = new Movie();
	movie.setMovieid(movieid);
	movie.setMoviename(moviename);
	movie.setMovieprice(movieprice);
	movie.setMovierating(movierating);
	movie.setMoviegenre(moviegenre);
	movie.setMovielanguage(movielanguage);
	movie.setMovieimage(imagepart.getInputStream().readAllBytes());
	movie.setMoviedescription(moviedescription);
	
	Dao dao = new Dao();
	try {
		HttpSession session = req.getSession();
		String adminname = (String)session.getAttribute("adminname");
		if(adminname!=null) {
			dao.saveMovie(movie);
			List<Movie> movies = dao.getAllMovies();
			req.setAttribute("movies", movies);
			RequestDispatcher d =  req.getRequestDispatcher("home.jsp");
			d.include(req, resp);	
		}
		else {
			req.setAttribute("message", "!!...Access Denied, Admin Login Required...!!");
			RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
			dispatcher.include(req, resp);	
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
