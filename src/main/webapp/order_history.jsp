<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.delivery.app.model.Order" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Order History</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body>
    <div class="order-container">
        <div class="order-title"><i class="fa fa-list"></i> Your Orders</div>
        <%
            List<Order> orders = (List<Order>) request.getAttribute("orders");
            if (orders == null || orders.isEmpty()) {
        %>
            <div style="text-align:center;font-size:1.12em;color:#888;">You have no orders yet.</div>
        <% } else { %>
            <table class="order-table">
                <tr>
                    <th>Order ID</th>
                    <th>Date</th>
                    <th>Restaurant</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Payment</th>
                </tr>
                <%
                    for (Order order : orders) {
                %>
                <tr>
                    <td><%= order.getOrderId() %></td>
                    <td><%= order.getOrderDate() %></td>
                    <td><%= order.getRestaurantId() %></td>
                    <td><i class="fa fa-inr"></i> <%= order.getTotalAmount() %></td>
                    <td><%= order.getStatus() %></td>
                    <td><%= order.getPaymentMode() %></td>
                </tr>
                <% } %>
            </table>
        <% } %>
    </div>
</body>
</html>