<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%
			CustomerBean cbean = (CustomerBean)session.getAttribute("CustomerBean");
		%>
		<h1>
			Welcome, <%=cbean.getC_fname()%>
		</h1>
		<h2>Dashboard</h2>
		<div class="nav-links">
			<a href="view2">View Products</a><br><br>
			<a href="logout">Logout</a>
		</div>
	</div>
</body>
</html>