<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Login</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body style="background-image: url('Images/food_background.jpg'); background-size: cover;" class="centered-page">
    <div class="form-container">
        <div class="form-title"><i class="fa fa-sign-in"></i> Login</div>
        <form action="login" method="post">
            <%
                String error = (String) request.getAttribute("error");
                if (error != null) {
            %>
            <div class="error-message"><%= error %></div>
            <% } %>
            <div class="form-group">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-input" required>
            </div>
            <div class="form-group">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-input" required>
            </div>
            <button type="submit" class="form-btn"><i class="fa fa-sign-in"></i> Login</button>
            <div style="margin-top:1em;text-align:center;">
                Don't have an account? <a href="register.jsp" style="color:#ff5a1f; text-decoration: none;">Register here</a>
            </div>
        </form>
    </div>
</body>
</html>