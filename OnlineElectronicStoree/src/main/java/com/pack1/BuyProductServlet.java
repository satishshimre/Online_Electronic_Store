package com.pack1;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/buyproduct")
public class BuyProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null) {
            req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
            return;
        }

        String pcode = req.getParameter("code");
        if (pcode == null) {
            req.setAttribute("error", "Invalid product");
            req.getRequestDispatcher("view2").forward(req, res);
            return;
        }

        // Fetch product from DB
        BuyProductServletDAO dao = new BuyProductServletDAO();
        ProductBean pb = dao.getProduct(pcode);

        if (pb == null) {
            req.setAttribute("error", "Product not found");
            req.getRequestDispatcher("view2").forward(req, res);
            return;
        }

        req.setAttribute("pbitem", pb);
        req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null) {
            req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
            return;
        }

        String pcode = req.getParameter("pcode");
        int rqty = Integer.parseInt(req.getParameter("rqty"));

        BuyProductServletDAO dao = new BuyProductServletDAO();
        ProductBean pb = dao.getProduct(pcode);

        if (pb == null) {
            req.setAttribute("error", "Product not found");
            req.getRequestDispatcher("view2").forward(req, res);
            return;
        }

        int available = Integer.parseInt(pb.getP_qty());
        if (rqty > available) {
            req.setAttribute("error", "Not enough stock!");
            req.setAttribute("pbitem", pb);
            req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
            return;
        }

        // Calculate price
        int totalPrice = dao.calculatePrice(pb, rqty);

        // Update quantity in DB
        dao.updateQuantity(pcode, available - rqty);

        // Set values for success page
        req.setAttribute("product", pb);
        req.setAttribute("reqQty", rqty);
        req.setAttribute("price", totalPrice);

        req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
    }
}
