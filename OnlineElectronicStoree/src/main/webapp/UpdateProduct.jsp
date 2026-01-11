<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%
			AdminBean abean=(AdminBean)session.getAttribute("AdminBean");
			String data=(String)request.getAttribute("msg");
		%>
		<h1>✅ Product Updated Successfully!</h1>
		<p style="color: #555; margin-bottom: 20px;">
			Hello <%=abean != null ? abean.getA_fname() : "Admin"%><br><br>
			<%=data != null ? data : "Product has been updated successfully!"%>
		</p>
		<div class="nav-links">
			<a href="AddProduct.html">➕ Add Product</a><br><br>
			<a href="view1">📦 View Products</a><br><br>
			<a href="logout">🚪 Logout</a>
		</div>
	</div>
</body>
</html>