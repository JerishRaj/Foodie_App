# 🍔 Foodie - Online Food Delivery App 🚀

Welcome to **Foodie**, your favorite online food ordering and delivery platform!  
Order delicious meals from top-rated restaurants near you and get them delivered at lightning speed.  
Whether you're a customer, restaurant admin, superadmin, or delivery agent – Foodie has you covered! 😋

---

## 🌟 Features

- 👤 **User Registration & Login** (Customer, RestaurantAdmin, DeliveryAgent, SuperAdmin)
- 🏪 **Restaurant Listings** – Browse & search restaurants with cuisine filters
- 🍽️ **Menu Display** – View menus with images, ratings, and availability
- 🛒 **Shopping Cart** – Add, update, and remove items from your cart
- 💳 **Checkout & Payments** – Multiple payment modes supported (COD, Card, UPI)
- 📦 **Order Placement & History** – Place orders and view past orders
- 🔒 **Secure Authentication** – Session-based login/logout
- 🛠️ **Role-based Access** – Different dashboards and features for each user type

---

## 🛠️ Technologies Used

| Layer             | Technology                                     |
|-------------------|------------------------------------------------|
| 💻 Frontend       | HTML, CSS, JSP                                 |
| 🖥️ Backend        | Java (Servlets, JSP)                           |
| 🗄️ Database       | MySQL                                          |
| 🌐 Server         | Apache Tomcat 10                               |
| ☕ ORM/DAO        | Custom Java DAO Implementation                 |

---

## 📸 Screenshots

<details>
<summary>Click to expand!</summary>

- 🏠 **Home Page:**
  ![Home](Images/food-hero.jpg)

- 🏪 **Restaurant Listing:**
  ![Restaurant List](Images/restaurant-list-demo.jpg)

- 🍽️ **Menu Page:**
  ![Menu](Images/menu-demo.jpg)

- 🛒 **Cart & Checkout:**
  ![Cart](Images/cart-demo.jpg)

- 📦 **Order History:**
  ![Order History](Images/order-history-demo.jpg)

</details>

---

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/foodie-app.git
   cd foodie-app
   ```

2. **Setup the Database**
   - Import the `food_delivery_app` SQL schema from `/database/food_delivery_app.sql`
   - Update DB credentials in `DBConnection.java` if needed

3. **Deploy to Tomcat**
   - Import the project into Eclipse/IntelliJ as a Maven or Dynamic Web Project
   - Deploy on Apache Tomcat 10+

4. **Start Using Foodie!**

---

## 📂 Project Structure

```
/src
  /com.food.delivery.app
    /model        // Java Beans (User, Order, Menu, etc.)
    /dao          // DAO Interfaces
    /daoimpl      // DAO Implementations
    /servlet      // All Servlets (Login, Register, Cart, etc.)
    /util         // Utility Classes (DBConnection)
  /webapp
    /css          // Stylesheets
    /Images       // App Images
    *.jsp         // JSP Pages (home, menu, cart, order_history, etc.)
```

---

## 📝 Database Schema

- **Tables:** user, restaurant, menu, order, orderitem
- **Key ENUM:**  
  `role ENUM('Customer', 'RestaurantAdmin', 'DeliveryAgent', 'SuperAdmin')`

---

## 👨‍💻 Contributors

- [Jerish Mary Sahana](https://github.com/JerishRaj)

---

## ❤️ Acknowledgements

- Java Servlet/JSP Documentation
- Apache Tomcat
- MySQL
- [Font Awesome](https://fontawesome.com/)

---

## 🤝 License

MIT License

---

## 📬 Feedback & Support

- **Issues or Suggestions?**  
  [Open an Issue](https://github.com/JerishRaj/foodie-app/issues)
- **Contact:**  
  [your.email@example.com](mailto:JerishRaj25@gmail.com)

---

> **Eat Good, Feel Good! 🍕🍟🍔🍜**
