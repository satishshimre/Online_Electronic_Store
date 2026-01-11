<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%
			AdminBean abean = (AdminBean) session.getAttribute("AdminBean");
		%>
		<h1>
			Welcome, <%=abean.getA_fname()%>
		</h1>
		<h2>Dashboard</h2>
		<div class="nav-links">
			<a href="AddProduct.html">Add Product</a><br><br>
			<a href="view1">View Products</a><br><br>
			<a href="logout">Logout</a>
		</div>
	</div>
</body>
</html>