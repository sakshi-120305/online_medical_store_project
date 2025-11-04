# 💊 Online Medical Store

A Java-based web application that allows customers to browse, search, and order medical products online. It provides functionalities for pharmacists to manage inventory and customer orders. Built using JSP/Servlets, MySQL, and hosted on Apache Tomcat.

---

## 🚀 Features

- 🔐 User authentication (Login/Register)
- 🛒 Browse & purchase medicines
- 📦 Pharmacist dashboard to manage products & orders
- 💬 Contact form to send messages
- 📱 WhatsApp integration for order confirmation (optional)
- 📁 Forgot password functionality without email (secure link on screen)

---

## 🧱 Technologies Used

- Java (JSP, Servlets)
- Apache Tomcat 10.1
- MySQL (Workbench)
- HTML5/CSS3
- JDBC
- Eclipse IDE

---

## 🗂️ Project Structure

OnlineMedicalStore/
├── src/
│ ├── main/
│ │ ├── java/ # Java source files (Servlets, DAO, Models)
│ │ └── webapp/ # JSP pages, static files (css, js, images)
│ │ ├── css/
│ │ ├── js/
│ │ ├── images/
│ │ └── *.jsp
├── sql/
│ └── medicalstore.sql # MySQL database dump

## ⚙️ Setup Instructions

1. Clone the Repository
```bash
git clone https://github.com/your-username/OnlineMedicalStore.git

2. Import in Eclipse
File > Import > Existing Maven/Java Project
Select the OnlineMedicalStore directory

3. Setup the Database
Open MySQL Workbench
Create a new schema named medicalstore
Run the SQL script:
-- Use this SQL file:
sql/medicalstore.sql

4. Configure DB Connection
Update your DBConnection.java with your MySQL credentials:
String url = "jdbc:mysql://localhost:3306/medicalstore";
String user = "root";
String password = "your_password";

5. Deploy on Apache Tomcat
Add the project to Apache Tomcat 10.1 server in Eclipse
Run the server and access the app at:
http://localhost:8081/OnlineMedicalStore

📝 Credentials (Sample)
Pharmacist Login
Email: admin@med.com
Password: admin123

Customer Login
Email: user@example.com
Password: user123
(Or register a new user from the registration page)


