package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.User;

@WebServlet("/usersignup")
public class SaveUser extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id = Integer.parseInt(req.getParameter("userid"));
	String name = req.getParameter("username");
	long contact = Long.parseLong(req.getParameter("usercontact"));
	String mail = req.getParameter("usermail");
	String password = req.getParameter("userpassword");
	
	User user = new User();
	user.setUserid(id);
	user.setUsername(name);
	user.setUsercontact(contact);
	user.setUsermail(mail);
	user.setUserpassword(password);
	
	Dao dao = new Dao();
	try {
		int result = dao.saveUser(user);
		if(result>0) {
			   RequestDispatcher d = req.getRequestDispatcher("userlogin.jsp");
				d.include(req, resp);
		   }
		   else {
			   RequestDispatcher d = req.getRequestDispatcher("usersignup.jsp");
				d.include(req, resp);
		   }
	}  catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
