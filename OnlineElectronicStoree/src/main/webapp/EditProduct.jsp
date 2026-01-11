<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<%
		ProductBean pb = (ProductBean) request.getAttribute("pbitem");
		%>
		<h1>Edit Product</h1>
		<p style="color: #666; margin-bottom: 20px;">Product Code: <strong><%=pb.getP_code()%></strong></p>
		<form action="update" method="post">
			<input type="hidden" name="pcode" value="<%=pb.getP_code()%>">
			<div class="form-group">
				<label>Product Price</label>
				<input type="number" name="pprice" value="<%=pb.getP_price()%>" placeholder="Enter Product Price" step="0.01" required>
			</div>
			<div class="form-group">
				<label>Product Quantity</label>
				<input type="number" name="pqty" value="<%=pb.getP_qty()%>" placeholder="Enter Product Quantity" required>
			</div>
			<input type="submit" value="Update Product">
		</form>
		<div class="nav-links">
			<a href="view1">⬅ Back to List</a>
		</div>
	</div>
</body>
</html>