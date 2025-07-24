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

@WebServlet("/user-resgistration")
public class UserRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String address = req.getParameter("address");
        String phoneNumber = req.getParameter("phoneNumber");
        String role = req.getParameter("role"); // Will be one of: customer, restaurantadmin, superadmin, deliveryagent

        // You can add validation here for allowed roles if you want!

        User user = new User();
        user.setName(name);
        user.setUserName(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setAddress(address);
        user.setPhoneNumber(phoneNumber);
        user.setRole(role);

        UserDAO userDAO = new UserDAOImpl();
        if (userDAO.getUserByEmailId(email) != null) {
            req.setAttribute("error", "Email already registered.");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
            return;
        }

        userDAO.addUser(user);

        HttpSession session = req.getSession();
        session.setAttribute("userId", user.getUserId());
        session.setAttribute("user", user);
        resp.sendRedirect("home");
    }
}