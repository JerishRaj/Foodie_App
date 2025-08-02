package com.food.delivery.app.servlet;

import java.io.IOException;

import com.food.delivery.app.dao.UserDAO;
import com.food.delivery.app.daoimpl.UserDAOImpl;
import com.food.delivery.app.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user-registration")
public class UserRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String address = req.getParameter("address");
        String phoneNumber = req.getParameter("phoneNumber");
        String role = req.getParameter("role"); // customer, restaurantadmin, superadmin, deliveryagent, etc.

        UserDAO userDAO = new UserDAOImpl();

        // 1. Check if email is already registered
        if (userDAO.getUserByEmailId(email) != null) {
            req.setAttribute("error", "Email already registered.");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
            return;
        }

        // 2. Register the new user
        User user = new User();
        user.setName(name);
        user.setUserName(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setAddress(address);
        user.setPhoneNumber(phoneNumber);
        user.setRole(role);

        userDAO.addUser(user);

        // 3. Retrieve the user from DB to get the actual userId
        User registeredUser = userDAO.getUserByEmailId(email);

        // 4. Set user in session
        HttpSession session = req.getSession();
        session.setAttribute("userId", registeredUser.getUserId());
        session.setAttribute("user", registeredUser);

        resp.sendRedirect("home");
    }
}