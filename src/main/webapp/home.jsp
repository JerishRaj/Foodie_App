<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="components/navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Home</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body>
    <section class="hero-section">
        <div class="hero-details">
            <h1>Order Your Favourite Food Online</h1>
            <p>Delicious meals delivered fast from top rated restaurants near you. Explore, order, and enjoy!</p>
            <form class="search-bar" action="SearchServlet" method="get">
                <input type="text" name="searchQuery" placeholder="Search for restaurants, cuisines, or dishes..." autocomplete="off">
                <button type="submit"><i class="fa fa-search"></i> Search</button>
            </form>
        </div>
        <div class="hero-img">
            <img src="Images/food-hero.jpg" alt="Delicious Food">
        </div>
    </section>
    <h2 style="text-align:center; color:#ff5a1f; margin-top:3em;">Featured Restaurants</h2>
    <div class="restaurant-list">
        <%
            java.util.List<com.food.delivery.app.model.Restaurant> allRestaurants = (java.util.List<com.food.delivery.app.model.Restaurant>)request.getAttribute("allRestaurants");
            if (allRestaurants != null && !allRestaurants.isEmpty()) {
                for (com.food.delivery.app.model.Restaurant res : allRestaurants) {
        %>
        <div class="restaurant-card">
            <img class="restaurant-image" src="<%= res.getImagePath() %>" alt="<%= res.getName() %>">
            <div class="restaurant-info">
                <div class="restaurant-title"><i class="fa fa-cutlery"></i> <%= res.getName() %></div>
                <div class="restaurant-cuisine"><i class="fa fa-leaf"></i> <%= res.getCusineType() %></div>
                <div class="restaurant-rating"><i class="fa fa-star"></i> <%= res.getRating() %></div>
                <div class="restaurant-meta"><i class="fa fa-clock"></i> <%= res.getDeliveryTime() %> | <i class="fa fa-map-marker"></i> <%= res.getAddress() %></div><br>
                <a href="menu?restaurantId=<%= res.getRestaurantId() %>"class="add-cart-btn"style="margin-top:1em; text-decoration: none;"> <i class="fa fa-list-alt"></i> View Menu</a>
            </div>
        </div>
        <%
                }
            } else {
        %>
            <div style="grid-column:1/-1;text-align:center;font-size:1.2em;color:#888;">No restaurants found.</div>
        <% } %>
    </div>
</body>
</html>