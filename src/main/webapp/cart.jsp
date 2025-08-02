<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.food.delivery.app.model.Cart" %>
<%@ page import="com.food.delivery.app.model.CartItem" %>
<%@ page import="com.food.delivery.app.model.Menu" %>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Cart</title>
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
    <div class="cart-container">
        <div class="cart-title"><i class="fa fa-shopping-cart"></i> Your Cart</div>
        <%
            Cart cart = (Cart)session.getAttribute("cart");
            if (cart != null && !cart.getItems().isEmpty()) {
        %>
        <table class="cart-table">
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Action</th>
            </tr>
            <%
                for (CartItem item : cart.getItems().values()) {
            %>
            <tr>
                <td><%= item.getName() %></td>
                <td><i class="fa fa-inr"></i> <%= item.getPrice() %></td>
                <td>
                    <form action="cart" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="itemId" value="<%= item.getItemId() %>">
                        <input type="number" min="1" name="quantity" value="<%= item.getQuantity() %>" style="width:56px;">
                        <button type="submit" class="add-cart-btn" style="padding:2px 10px;font-size:0.95em;">Update</button>
                    </form>
                </td>
                <td><i class="fa fa-inr"></i> <%= item.getTotalPrice() %></td>
                <td>
                    <form action="cart" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="remove">
                        <input type="hidden" name="itemId" value="<%= item.getItemId() %>">
                        <button type="submit" class="add-cart-btn" style="background:#d10000;padding:2px 10px;font-size:0.95em;">Remove</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <div class="cart-footer">
            <span style="font-size:1.18em;font-weight:600;">Grand Total: <i class="fa fa-inr"></i> <%= cart.getGrandTotal() %></span>
            <form action="checkout" method="post" style="display:inline;">
                <select name="payment" class="form-select" style="width:150px;margin-right:1.2em;">
                    <option value="COD">Cash on Delivery</option>
                    <option value="Card">Card</option>
                    <option value="UPI">UPI</option>
                </select>
                <button type="submit" class="checkout-btn"><i class="fa fa-credit-card"></i> Checkout</button>
            </form>
            <a href="menu?restaurantId=<%= session.getAttribute("restaurantId") %>" class="add-cart-btn" style="margin-left:1.2em;text-decoration: none;background:#ff5a1f;">
                <i class="fa fa-plus"></i> Add More Items
            </a>
        </div>
        <!-- Back Button at the bottom -->
        <div style="text-align:left;">
            <button onclick="window.history.back();" class="back-btn">Back</button>
        </div>
        <% } else { %>
            <div style="text-align:center;font-size:1.15em;color:#888;">Your cart is empty. <a href="home" style="color:#ff5a1f; text-decoration: none;">Browse restaurants</a></div>
            <!-- Back Button at the bottom for empty cart state as well -->
            <div style="text-align:left;">
                <button onclick="window.history.back();" class="back-btn">Back</button>
            </div>
        <% } %>
    </div>
</body>
</html>