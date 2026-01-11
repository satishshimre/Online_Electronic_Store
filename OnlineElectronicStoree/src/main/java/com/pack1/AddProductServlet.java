package com.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		try 
		{
			HttpSession session=req.getSession(false);
			if(session==null)
			{
				req.getRequestDispatcher("AdminLogin.html").forward(req, res);
			}
			else
			{
				ProductBean pb=new ProductBean();
				
				pb.setP_code(req.getParameter("pcode"));
				pb.setP_name(req.getParameter("pname"));
				pb.setP_company(req.getParameter("pcompany"));
				pb.setP_price(req.getParameter("pprice"));
				pb.setP_qty(req.getParameter("pqty"));
				
				int rowCount=new AddProductDAO().insertProduct(pb);
				if(rowCount>0)
				{
					req.setAttribute("msg", "Products added to the Inventory");
					req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
				}
				//else
					//throw new RuntimeException("Product inventory NOT Updated!!!");
			}
		} 
		catch (Exception e) 
		{
			req.setAttribute("msg", "Duplicate Product Id Not Allowed");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
	
}
