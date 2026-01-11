<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container" style="width: 95%; max-width: 1400px; margin: 0 auto;">
    <h1>Product Inventory</h1>
    <div style="display: flex; justify-content: center; width: 100%;">
    <table style="margin: 0 auto;">
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Company</th>
            <th>Price</th>
            <th>Quantity</th>
            <%
                AdminBean abean = (AdminBean) session.getAttribute("AdminBean");
                if (abean != null) {
            %>
            <th>Actions</th>
            <% } %>
        </tr>
        <%
            ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");
            if(al != null && !al.isEmpty()) {
                for(ProductBean pb: al){
        %>
        <tr>
            <td><%=pb.getP_code()%></td>
            <td><%=pb.getP_name()%></td>
            <td><%=pb.getP_company()%></td>
            <td>₹<%=pb.getP_price()%></td>
            <td><%=pb.getP_qty()%></td>
            <%
                if (abean != null) {
            %>
            <td>
                <a href="edit?pcode=<%=pb.getP_code()%>">Edit</a> |
                <a href="delete?pcode=<%=pb.getP_code()%>">Delete</a>
            </td>
            <% } %>
        </tr>
        <% 
                }
            } else {
        %>
        <tr>
            <td colspan="<%=abean != null ? "6" : "5"%>" style="text-align: center; padding: 20px; color: #666;">
                No products available
            </td>
        </tr>
        <% } %>
    </table>
    </div>
    <div class="nav-links">
        <%
            if (abean != null) {
        %>
        <a href="AdminHome.jsp">⬅ Back to Admin Home</a>
        <%
            } else {
                CustomerBean cbean = (CustomerBean) session.getAttribute("CustomerBean");
                if (cbean != null) {
        %>
        <a href="CustomerHome.jsp">⬅ Back to Customer Home</a>
        <% 
                } else {
        %>
        <a href="index.html">⬅ Back to Home</a>
        <% } } %>
    </div>
</div>
</body>
</html>