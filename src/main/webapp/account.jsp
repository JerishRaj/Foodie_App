<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.delivery.app.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Account</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body>
    <div class="account-container">
        <div class="account-title"><i class="fa fa-user"></i> My Account</div>
        <%
            User user = (User) session.getAttribute("user");
            if (user == null) {
        %>
            <div style="text-align:center;font-size:1.15em;color:#888;">Please <a href="login.jsp" style="color:#ff5a1f; text-decoration: none;">login</a> to view your account.</div>
        <% } else { %>
            <table class="order-table" style="max-width:500px;margin:0 auto;">
                <tr>
                    <th>Name</th>
                    <td><%= user.getName() %></td>
                </tr>
                                <tr>
                    <th>UserName</th>
                    <td><%= user.getUserName() %></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><%= user.getEmail() %></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><%= user.getAddress() %></td>
                </tr>
                <tr>
                    <th>PhoneNumber</th>
                    <td><%= user.getPhoneNumber() %></td>
                </tr>
                                <tr>
                    <th>Role</th>
                    <td><%= user.getRole() %></td>
                </tr>
            </table>
        <% } %>
    </div>
</body>
</html>