<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged Out</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
    <%
        session.invalidate();
    %>
    <h1>✅ Logged Out Successfully!</h1>
    <p style="color: #555;">You have been securely logged out of the system.</p>
    <div class="nav-links">
    <h2>
        <a href="index.html">🏠 Back to Home</a><br><br>
        <a href="AdminLogin.html">🔑 Login Again</a>
    </h2>
    </div>
</div>
</body>
</html>