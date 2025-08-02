<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Foodie | Register</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Images/logo.png">
</head>
<body>
    <div class="form-container">
        <div class="form-title"><i class="fa fa-user-plus"></i> Register</div>
        <form action="user-registration" method="post">
            <%
                String error = (String) request.getAttribute("error");
                String success = (String) request.getAttribute("success");
                if (error != null) {
            %>
                <div class="error-message"><%= error %></div>
            <% } else if (success != null) { %>
                <div class="success-message"><%= success %></div>
            <% } %>
            <div class="form-group">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-input" required>
            </div>
            <div class="form-group">
                <label class="form-label">UserName</label>
                <input type="text" name="username" class="form-input" required>
            </div>
            <div class="form-group">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-input" required>
            </div>
            <div class="form-group">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-input" required>
            </div>
            <div class="form-group">
                 <label class="form-label">Phone Number</label>
                 <input type="text" name="phoneNumber" class="form-input" required>
            </div>
            <div class="form-group">
                <label class="form-label">Address</label>
                <input type="text" name="address" class="form-input" required>
            </div>
          <div class="form-group">
               <label class="form-label">Select Role</label>
               <select name="role" class="form-select" required>
               <option value="">Select Role</option>
               <option value="Customer">Customer</option>
               <option value="RestaurantAdmin">Restaurant Admin</option>
               <option value="DeliveryAgent">Delivery Agent</option>
               <option value="SuperAdmin">Super Admin</option>
               </select>
         </div>
            <button type="submit" class="form-btn"><i class="fa fa-user-plus"></i> Register</button>
        </form>
        <div style="margin-top:1em;text-align:center;">
            Already have an account? <a href="login.jsp" style="color:#ff5a1f; text-decoration: none;">Login</a>
        </div>
    </div>
</body>
</html>