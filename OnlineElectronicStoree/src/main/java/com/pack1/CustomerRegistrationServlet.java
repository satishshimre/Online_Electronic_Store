package com.pack1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/creg")
public class CustomerRegistrationServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		CustomerBean cbean=new CustomerBean();
		
		cbean.setC_uname(req.getParameter("cname"));
		cbean.setC_pwd(req.getParameter("cpwd"));
		cbean.setC_fname(req.getParameter("fname"));
		cbean.setC_lname(req.getParameter("lname"));
		cbean.setC_mail(req.getParameter("mail"));
		cbean.setC_phn(req.getParameter("phn"));
		
		CustomerRegistrationDAO cd= new CustomerRegistrationDAO();
		
		int rowCount = cd.insert_newCustomerRecord(cbean);
		
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		
		if(rowCount==0)
		{
			pw.print("Registration Failed!!!");
			req.getRequestDispatcher("CustomerLogin.html").include(req, res);
		}
		else
		{
			pw.print("Registration Complete!!!");
			req.getRequestDispatcher("CustomerLogin.html").include(req, res);
		
		}
	}
}
