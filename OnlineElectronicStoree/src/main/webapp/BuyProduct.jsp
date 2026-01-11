<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="form-container">
		<%
			ProductBean pb = (ProductBean) request.getAttribute("pbitem");
		%>
		<h2 style="text-align: center; color: #333; margin-bottom: 30px;">Buy Product</h2>
		<form action="buyproduct" method="post">
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Product Code:</label>
			<input type="text" name="pcode" value="<%=pb.getP_code()%>" readonly>
			
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Product Name:</label>
			<input type="text" value="<%=pb.getP_name()%>" readonly>
			
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Company:</label>
			<input type="text" value="<%=pb.getP_company()%>" readonly>
			
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Price:</label>
			<input type="text" value="₹<%=pb.getP_price()%>" readonly>
			
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Available Quantity:</label>
			<input type="text" value="<%=pb.getP_qty()%>" readonly>
			
			<label style="display: block; margin-top: 15px; color: #555; font-weight: 500;">Required Quantity:</label>
			<input type="number" name="rqty" min="1" max="<%=pb.getP_qty()%>" placeholder="Enter quantity" required>
			
			<div style="text-align: center; margin-top: 25px;">
				<input type="submit" value="Proceed to Buy" class="btn">
			</div>
		</form>
		<div style="text-align: center; margin-top: 20px;">
			<a href="view2" style="color: #667eea; text-decoration: none; font-weight: 500;">⬅ Back to Products</a>
		</div>
	</div>
</body>
</html>