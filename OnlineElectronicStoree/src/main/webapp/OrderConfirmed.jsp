<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmed</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
        <%
            ProductBean pb = (ProductBean)request.getAttribute("product");
            int reqQty = (Integer)request.getAttribute("reqQty");
            int price = (Integer)request.getAttribute("price");
        %>
        <h1>✅ Order Confirmed!</h1>
        <div style="background: #f0f8ff; padding: 25px; border-radius: 15px; margin: 20px 0; border-left: 5px solid #667eea; text-align: left;">
            <p style="font-size: 18px; color: #333; margin-bottom: 15px;">
                <strong>You have purchased: <%= reqQty %> items</strong>
            </p>
            <p style="font-size: 16px; color: #555; margin-bottom: 10px;">
                <strong>Product:</strong> <%= pb.getP_name() %>
            </p>
            <p style="font-size: 20px; color: #667eea; font-weight: 600; margin-top: 15px;">
                <strong>Total Cost: ₹<%= price %></strong>
            </p>
        </div>
        <div class="nav-links" style="text-align: center;">
            <a href="view2" style="font-size: 18px; padding: 12px 25px; margin: 5px;">🛍️ View More Products</a><br><br>
            <a href="CustomerHome.jsp" style="font-size: 18px; padding: 12px 25px; margin: 5px;">🏠 Back to Home</a><br><br>
            <a href="logout" style="font-size: 18px; padding: 12px 25px; margin: 5px;">🚪 Logout</a>
        </div>
    </div>
</body>
</html>
