<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%
			AdminBean abean=(AdminBean)session.getAttribute("AdminBean");
			String data=(String)request.getAttribute("msg");
		%>
		<h1>✅ Product Added Successfully!</h1>
		<p style="color: #555; margin-bottom: 20px;">
			<%=data != null ? data : "Product has been added successfully!"%><br>
			Hello Mr. <%=abean != null ? abean.getA_fname() : "Admin"%>
		</p>
		<div class="nav-links">
			<a href="AddProduct.html">➕ Add Another Product</a><br><br>
			<a href="view1">📦 View Products</a><br><br>
			<a href="logout">🚪 Logout</a>
		</div>
	</div>
</body>
</html>