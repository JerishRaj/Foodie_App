package com.food.delivery.app.dao;

import java.util.List;

import com.food.delivery.app.model.Order;

public interface OrderDAO {
    int addOrder(Order order);
    void updateOrder(Order order);
    void deleteOrder(int orderid);
    Order getOrderById(int orderid);
    List<Order> getAllOrders();
    List<Order> getOrdersByUserId(int userId);
}