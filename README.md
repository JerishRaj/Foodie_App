# 🍔 Foodie - Online Food Delivery App 🚀

Welcome to **Foodie**, your favorite online food ordering and delivery platform!  
Order delicious meals from top-rated restaurants near you and get them delivered at lightning speed.  
Whether you're a **customer**, **restaurant admin**, **superadmin**, or **delivery agent** – Foodie has you covered! 😋

---

## 🌟 Features

- 👤 **User Registration & Login**  
  Supports roles: Customer, RestaurantAdmin, DeliveryAgent, SuperAdmin
- 🏪 **Restaurant Listings**  
  Browse & search restaurants with cuisine/category filters
- 🍽️ **Menu Display**  
  View menus with images, ratings, and availability
- 🛒 **Shopping Cart**  
  Add, update, and remove items from your cart
- 💳 **Checkout & Payments**  
  Multiple payment options: COD, Card, UPI
- 📦 **Order Placement & History**  
  Place orders and view your order history
- 🔒 **Secure Authentication**  
  Session-based login/logout
- 🛠️ **Role-Based Access**  
  Different dashboards and permissions per role

---

## 🛠️ Technologies Used

| Layer        | Technology                             |
|--------------|------------------------------------------|
| 💻 Frontend   | HTML, CSS, JSP                          |
| 🖥️ Backend    | Java (Servlets, JSP)                    |
| 🗄️ Database   | MySQL                                   |
| 🌐 Server     | Apache Tomcat 10                        |
| ☕ ORM/DAO    | Custom Java DAO Implementation          |

---

## 📸 Screenshots

<details>
<summary>Click to expand!</summary>

- 🏠 **Home Page:**

  ![Home](https://raw.githubusercontent.com/JerishRaj/Foodie_App/main/assets/Home.png)

- 🏪 **Restaurant Listing:**

  ![Restaurant](https://raw.githubusercontent.com/JerishRaj/Foodie_App/main/assets/Restaurant.png)

- 🍽️ **Menu Page:**

  ![Menu](https://raw.githubusercontent.com/JerishRaj/Foodie_App/main/assets/Menu.png)

- 🛒 **Cart & Checkout:**

  ![Cart](https://raw.githubusercontent.com/JerishRaj/Foodie_App/main/assets/Cart.png)

- 📦 **Order History:**

  ![Order](https://raw.githubusercontent.com/JerishRaj/Foodie_App/main/assets/Order.png)

</details>

---

## 🚀 Getting Started

### 1. **Clone the repository**
```bash
git clone https://github.com/JerishRaj/Foodie_App.git
cd Foodie_App
---
2. Set up the Database
Import the SQL file: database/food_delivery_app.sql into your MySQL server

Update DB credentials in DBConnection.java as needed

3. Run the App
Import the project into Eclipse/IntelliJ as a Dynamic Web Project or Maven project

Deploy on Apache Tomcat 10+

Open in browser: http://localhost:8080/Foodie_App
---
/src
  /com.food.delivery.app
    /model       # Java Beans (User, Order, Menu, etc.)
    /dao         # DAO Interfaces
    /daoimpl     # DAO Implementations
    /servlet     # Java Servlets (Login, Register, Cart, etc.)
    /util        # Utilities (DBConnection)
    
/webapp
  /css           # Stylesheets
  /Images        # App images
  /assets        # Screenshots for README
  *.jsp          # JSP Pages (home, login, menu, cart, etc.)
---
📝 Database Schema
Tables:
user

restaurant

menu

order

orderitem

ENUM:
role ENUM('Customer', 'RestaurantAdmin', 'DeliveryAgent', 'SuperAdmin')

👨‍💻 Contributors
Jerish Mary Sahana

❤️ Acknowledgements
Java Servlet & JSP Documentation

Apache Tomcat

MySQL

Font Awesome Icons

🤝 License
This project is licensed under the MIT License.

📬 Feedback & Support
Issues or Suggestions?
Open an Issue

Contact Me:
📧 JerishRaj25@gmail.com

Eat Good, Feel Good! 🍕🍟🍔🍜
---

---

### ✅ Next Steps:

1. **Copy the content above** and paste it into your `README.md` file.
2. **Commit and push it**:
   ```bash
   git add README.md
   git commit -m "Updated README with final layout and screenshots"
   git push origin main


