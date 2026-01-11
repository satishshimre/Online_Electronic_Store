package com.pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/view2")
public class ViewCustomerProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if (session == null) {
            req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
        } else {
            ArrayList<ProductBean> plist = new ViewCustomerProductDAO().fetchProducts();
            session.setAttribute("CustomerProductList", plist);
            req.getRequestDispatcher("CustomerProductList.jsp").forward(req, res);
        }
    }
}
