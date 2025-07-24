package com.food.delivery.app.servlet;

import java.io.IOException;
import java.util.List;

import com.food.delivery.app.dao.OrderDAO;
import com.food.delivery.app.daoimpl.OrderDAOImpl;
import com.food.delivery.app.model.Order;
import com.food.delivery.app.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/orderHistory")
public class OrderHistoryServlet extends HttpServlet {
    private OrderDAO orderDAO;

    @Override
    public void init() throws ServletException {
        orderDAO = new OrderDAOImpl();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }
        User user = (User) session.getAttribute("user");
        List<Order> orders = orderDAO.getOrdersByUserId(user.getUserId());
        req.setAttribute("orders", orders);
        req.getRequestDispatcher("order_history.jsp").forward(req, resp);
    }
}