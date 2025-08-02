<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.delivery.app.model.Order" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Order History</title>
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
            <!-- Back Button at the bottom -->
            <div style="text-align:left;">
                <button onclick="window.history.back();" class="back-btn">Back</button>
            </div>
        <% } %>
    </div>
</body>
</html>