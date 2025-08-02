package com.food.delivery.app.servlet;

import java.io.IOException;

import com.food.delivery.app.dao.MenuDAO;
import com.food.delivery.app.daoimpl.MenuDAOImpl;
import com.food.delivery.app.model.Cart;
import com.food.delivery.app.model.CartItem;
import com.food.delivery.app.model.Menu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        Cart cart = (Cart) session.getAttribute("cart");
        Integer oldRestaurantId = (Integer) session.getAttribute("restaurantId");
        String action = req.getParameter("action");

        int newRestaurantId = (oldRestaurantId != null) ? oldRestaurantId : -1;

        if ("add".equals(action)) {
            String restIdStr = req.getParameter("restaurantId");
            if (restIdStr != null) {
                newRestaurantId = Integer.parseInt(restIdStr);
                if (cart != null && oldRestaurantId != null && oldRestaurantId != newRestaurantId) {
                    session.removeAttribute("cart");
                    cart = null;
                }
                if (cart == null) {
                    cart = new Cart();
                    session.setAttribute("cart", cart);
                    session.setAttribute("restaurantId", newRestaurantId);
                }
            } else {
                resp.sendRedirect("error.jsp");
                return;
            }
        } else {
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            if (oldRestaurantId == null) {
                resp.sendRedirect("error.jsp");
                return;
            }
            newRestaurantId = oldRestaurantId;
        }

        try {
            if ("add".equals(action)) {
                addItemToCart(req, cart, newRestaurantId);
            } else if ("update".equals(action)) {
                updateCartItem(req, cart);
            } else if ("remove".equals(action)) {
                removeCartItem(req, cart);
            }

            session.setAttribute("cart", cart);
            resp.sendRedirect("cart.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp");
        }
    }

    private void addItemToCart(HttpServletRequest req, Cart cart, int restaurantId) throws Exception {
        int menuId = Integer.parseInt(req.getParameter("menuId"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        MenuDAO menuDAO = new MenuDAOImpl();
        Menu menuItem = menuDAO.getMenuById(menuId);

        CartItem item = new CartItem(menuId, restaurantId, menuItem.getItemName(), quantity, menuItem.getPrice(),
                quantity * menuItem.getPrice());

        cart.getItems().put(menuId, item);
    }

    private void updateCartItem(HttpServletRequest req, Cart cart) {
        int itemId = Integer.parseInt(req.getParameter("itemId"));
        int newQuantity = Integer.parseInt(req.getParameter("quantity"));

        CartItem item = cart.getItems().get(itemId);
        if (item != null) {
            if (newQuantity <= 0) {
                cart.getItems().remove(itemId);
            } else {
                item.setQuantity(newQuantity);
                item.setTotalPrice(newQuantity * item.getPrice());
            }
        }
    }

    private void removeCartItem(HttpServletRequest req, Cart cart) {
        int itemId = Integer.parseInt(req.getParameter("itemId"));
        cart.getItems().remove(itemId);
    }
}