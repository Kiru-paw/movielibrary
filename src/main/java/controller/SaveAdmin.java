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
import dto.Admin;
@WebServlet("/adminsignup")
public class SaveAdmin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("adminid"));
		String name = req.getParameter("adminname");
		long contact = Long.parseLong(req.getParameter("admincontact"));
		String mail = req.getParameter("adminmail");
		String password = req.getParameter("adminpassword");
		
		Admin admin = new Admin();
		admin.setAdminid(id);
		admin.setAdminname(name);
		admin.setAdmincontact(contact);
		admin.setAdminmail(mail);
		admin.setAdminpassword(password);
		
		Dao dao= new Dao();
		
		try {
			 int result = dao.saveAdmin(admin);
			 System.out.println(result);
			   if(result>0) {
				   RequestDispatcher d = req.getRequestDispatcher("adminlogin.jsp");
					d.include(req, resp);
			   }
			   else {
				   RequestDispatcher d = req.getRequestDispatcher("adminsignup.jsp");
					d.include(req, resp);
			   }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
 	}
}
