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
  ![Home](<img width="1919" height="1131" alt="image" src="https://github.com/user-attachments/assets/278162d9-87b4-4d60-8fb9-884dcb8c8ce7" />
)

- 🏪 **Restaurant Listing:**
  ![Restaurant List](<img width="1916" height="1138" alt="image" src="https://github.com/user-attachments/assets/da68d7a8-45e6-41fe-a8bb-188dc5f32bf7" />
)

- 🍽️ **Menu Page:**
  ![Menu](<img width="1911" height="1134" alt="image" src="https://github.com/user-attachments/assets/ca8c8382-abaa-4ae6-b909-42e1d2b6280c" />
)

- 🛒 **Cart & Checkout:**
  ![Cart](<img width="1917" height="1134" alt="image" src="https://github.com/user-attachments/assets/a8b2b9b7-b4c3-4527-bd14-4968d7507715" />
)

- 📦 **Order History:**
  ![Order History](<img width="1917" height="1138" alt="image" src="https://github.com/user-attachments/assets/f319a20a-62f8-4056-960f-f49d3bf325c3" />
)

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
