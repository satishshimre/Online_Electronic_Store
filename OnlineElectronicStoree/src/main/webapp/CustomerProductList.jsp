<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Products</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container" style="max-width: 1000px; width: 95%;">
	<h1>Available Products</h1>

	<%
		ArrayList<ProductBean> list = (ArrayList<ProductBean>)session.getAttribute("CustomerProductList");

		if(list == null || list.size() == 0){
			out.println("<h2>No products available.</h2>");
		} else {
			Iterator<ProductBean> i = list.iterator();
			while(i.hasNext()){
				ProductBean pb = i.next();

				out.println(
					"<div class='product-card'>" +
					"<h3>" + pb.getP_name() + "</h3>" +
					"<p>Company: " + pb.getP_company() + "</p>" +
					"<p>Price: ₹" + pb.getP_price() + "</p>" +
					"<p>Qty: " + pb.getP_qty() + "</p>" +
					"<a class='btn' href='buyproduct?code=" + pb.getP_code() + "'>Buy</a>" +
					"</div>"
				);
			}
		}
	%>

	<br><a class="btn" href="CustomerHome.jsp">Back to Home</a>
</div>
</body>
</html>