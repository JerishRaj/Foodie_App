package com.food.delivery.app.model;


import java.sql.Timestamp;

public class Order {
	private int orderId;
	private int restaurantId;
	private int userId;
	private Timestamp orderDate;
	private int totalAmount;
	private String status;
	private String paymentMode;
	private String deliveryAddress;
	
	public Order() {
		
	}

    public Order(int restaurantId, int userId, Timestamp orderDate, int totalAmount, String status, String paymentMode, String deliveryAddress) {
        super();
        this.restaurantId = restaurantId;
        this.userId = userId;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.status = status;
        this.paymentMode = paymentMode;
        this.deliveryAddress = deliveryAddress;
    }

    public Order(int orderId, int restaurantId, int userId, Timestamp orderDate, int totalAmount, String status,
            String paymentMode, String deliveryAddress) {
        super();
        this.orderId = orderId;
        this.restaurantId = restaurantId;
        this.userId = userId;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.status = status;
        this.paymentMode = paymentMode;
        this.deliveryAddress = deliveryAddress;
    }

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	
    public String getDeliveryAddress() {
        return deliveryAddress;
    }

    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderDate=" + orderDate + ", totalAmount=" + totalAmount + ", status="
				+ status + ", paymentMode=" + paymentMode + "]";
	}
}