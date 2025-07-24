<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Menu</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body>
    <h2 style="text-align:center; color:#ff5a1f; margin-top:2em;">Menu</h2>
    <div class="menu-list">
        <%
            java.util.List<com.food.delivery.app.model.Menu> menuList = (java.util.List<com.food.delivery.app.model.Menu>)request.getAttribute("menuByRestaurantId");
            Integer restaurantId = null;
            if (menuList != null && !menuList.isEmpty()) {
                restaurantId = menuList.get(0).getRestaurantId();
                for (com.food.delivery.app.model.Menu menu : menuList) {
        %>
        <div class="menu-card">
            <img class="menu-image" src="<%= menu.getImagePath() %>" alt="<%= menu.getItemName() %>">
            <div class="menu-title"><i class="fa fa-cutlery"></i> <%= menu.getItemName() %></div>
            <div class="menu-desc"><%= menu.getDescription() %></div>
            <div class="menu-meta">
                <span class="menu-price"><i class="fa fa-inr"></i> <%= menu.getPrice() %></span><br>
                <span class="menu-rating"><i class="fa fa-star"></i> <%= menu.getRatings() %>⭐</span>
            </div>
            <div class="menu-availability">
                <i class="fa fa-check-circle"></i> <%= menu.getIsAvailable().equalsIgnoreCase("yes") ? "Available" : "Not Available" %>
            </div>
            <form action="cart" method="post" style="margin-top:1em;">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="menuId" value="<%= menu.getMenuId() %>">
                <input type="hidden" name="restaurantId" value="<%= menu.getRestaurantId() %>">
                <input type="number" min="1" name="quantity" value="1" style="width:60px;border-radius:0.6em;">
                <button type="submit" class="add-cart-btn"><i class="fa fa-cart-plus"></i> Add to Cart</button>
            </form>
        </div>
        <%
                }
            } else {
        %>
            <div style="grid-column:1/-1;text-align:center;font-size:1.15em;color:#888;">No menu items found.</div>
        <% } %>
    </div>
</body>
</html>