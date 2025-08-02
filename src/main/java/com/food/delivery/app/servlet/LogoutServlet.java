package com.food.delivery.app.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Invalidate the existing session if one exists
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        // Redirect to home page after logout
        resp.sendRedirect("home");
    }
}