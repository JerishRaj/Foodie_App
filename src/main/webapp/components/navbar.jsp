<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.food.delivery.app.model.User" %>
<%
    String userName = null;
    if (session != null && session.getAttribute("user") != null) {
        User user = (User) session.getAttribute("user");
        userName = user.getName();
    }
%>
<link rel="stylesheet" href="css/style.css">
<nav class="navbar">
    <div class="navbar-left">
        <a href="home" class="nav-logo">
            <img src="Images/food-hero.jpg" alt="Foodie" class="logo-img">
            <span class="app-title">Foodie</span>
        </a>
    </div>
    <div class="navbar-right">
        <% if (userName == null) { %>
            <a href="home"><i class="fa fa-home"></i> Home</a>
            <a href="login.jsp"><i class="fa fa-sign-in"></i> Login</a>
            <a href="register.jsp"><i class="fa fa-user-plus"></i> Register</a>
        <% } else { %>
            <a href="home"><i class="fa fa-home"></i> Home</a>
            <a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a>
            <a href="home"><i class="fa fa-cutlery"></i> Restaurants</a>
            <a href="orderHistory"><i class="fa fa-list"></i> Orders</a>
            <a href="account.jsp"><i class="fa fa-user"></i> Account</a>
            <a href="logout"><i class="fa fa-sign-out"></i> Logout</a>
            <span class="welcome-text">Hi, <%= userName %></span>
        <% } %>
    </div>
</nav>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">