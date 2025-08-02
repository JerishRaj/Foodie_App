<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.delivery.app.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Account</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
    <style>
        .back-btn {
            padding: 10px 25px;
            background: #ff5a1f;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            font-size: 1.1em;
            cursor: pointer;
            margin-top: 30px;
            margin-bottom: 10px;
            transition: background 0.2s;
        }
        .back-btn:hover {
            background: #e14c15;
        }
    </style>
</head>
<body>
    <div class="account-container">
        <div class="account-title"><i class="fa fa-user"></i> My Account</div>
        <%
            User user = (User) session.getAttribute("user");
            if (user == null) {
        %>
            <div style="text-align:center;font-size:1.15em;color:#888;">Please <a href="login.jsp" style="color:#ff5a1f; text-decoration: none;">login</a> to view your account.</div>
            <!-- Back Button at the bottom for not-logged-in state -->
            <div style="text-align:left;">
                <button onclick="window.history.back();" class="back-btn">Back</button>
            </div>
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
            <!-- Back Button at the bottom for logged-in state -->
            <div style="text-align:left;">
                <button onclick="window.history.back();" class="back-btn">Back</button>
            </div>
        <% } %>
    </div>
</body>
</html>