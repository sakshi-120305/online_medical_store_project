<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Product" %>
<%@ page import="dao.ProductDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.DBConnection" %>

<%
    // ✅ Session Role Check
    String role = (String) session.getAttribute("role");
    if (role == null || !role.equals("pharmacist")) {
        response.sendRedirect("error.jsp?message=Access denied! Pharmacists only.");
        return;
    }

    // ✅ Fetch products
    ProductDAO productDAO = new ProductDAO();
    List<Product> productList = productDAO.getAllProducts();

    // ✅ Handle message display
    String message = request.getParameter("message");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pharmacist Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 30px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            color: #00796b;
        }
        .message {
            color: green;
            font-weight: bold;
            margin: 10px 0;
        }
        form label {
            display: block;
            margin-top: 10px;
        }
        input, textarea, select, button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #00796b;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #004d40;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #00796b;
            color: white;
        }
        img {
            width: 80px;
            height: 80px;
            object-fit: cover;
        }
        .edit {
            background-color: #ffb74d;
            color: white;
            border: none;
            padding: 5px 10px;
        }
        .delete {
            background-color: #e57373;
            color: white;
            border: none;
            padding: 5px 10px;
        }
        .logout {
            float: right;
            background-color: #ff5252;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
        }
    </style>
    <script>
    function toggleAddForm() {
        var formDiv = document.getElementById("addForm");
        var arrow = document.getElementById("addArrow");

        if (formDiv.style.display === "none") {
            formDiv.style.display = "block";
            arrow.innerHTML = "▼";
        } else {
            formDiv.style.display = "none";
            arrow.innerHTML = "►";
        }
    }
    function toggleTable() {
        var tableDiv = document.getElementById("productTable");
        var arrow = document.getElementById("arrow");

        if (tableDiv.style.display === "none") {
            tableDiv.style.display = "block";
            arrow.innerHTML = "▼";
        } else {
            tableDiv.style.display = "none";
            arrow.innerHTML = "►";
        }
    }
    
    function toggleOrder() {
        var tableDiv = document.getElementById("orderTable");
        var arrow = document.getElementById("orderarrow");

        if (tableDiv.style.display === "none") {
            tableDiv.style.display = "block";
            arrow.innerHTML = "▼";
        } else {
            tableDiv.style.display = "none";
            arrow.innerHTML = "►";
        }
    } 
    
    function togglecusTable() {
        var tableDiv = document.getElementById("cusTable");
        var arrow = document.getElementById("cusarrow");

        if (tableDiv.style.display === "none") {
            tableDiv.style.display = "block";
            arrow.innerHTML = "▼";
        } else {
            tableDiv.style.display = "none";
            arrow.innerHTML = "►";
        }
    } 
    
    function togglemsgTable() {
        var tableDiv = document.getElementById("msgTable");
        var arrow = document.getElementById("msgarrow");

        if (tableDiv.style.display === "none") {
            tableDiv.style.display = "block";
            arrow.innerHTML = "▼";
        } else {
            tableDiv.style.display = "none";
            arrow.innerHTML = "►";
        }
    } 
</script>
</head>
<body>
<div class="container">
    <a class="logout" href="LogoutServlet">Logout</a>
    <h1>Pharmacist Dashboard</h1>

    <!-- ✅ Display Success/Error Message -->
    <% if (message != null) { %>
        <p class="message"><%= message %></p>
    <% } %>

    <!-- Add Product Form -->
   <h2 onclick="toggleAddForm()" style="cursor: pointer; color: teal;">
    <span id="addArrow">►</span> Add Product
</h2>
<div id="addForm" style="display: none;">
    <form action="AddProductServlet" method="post" enctype="multipart/form-data">
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>

        <label for="price">Price (Rs.):</label>
        <input type="number" id="price" name="price" step="0.01" required>

        <label for="category">Category:</label>
        <input type="text" id="category" name="category" required>

        <label for="image">Product Image:</label>
        <input type="file" id="image" name="image" accept="image/*" required>

        <button type="submit">Add Product</button>
    </form>
</div>
    <!-- Product Table -->
    <h2 onclick="toggleTable()" style="cursor: pointer; color: teal;">
    <span id="arrow">►</span> Manage Products
</h2>
    <div id="productTable" style="display: none;">
    <table>
        <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price (Rs.)</th>
            <th>Category</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Product p : productList) {
        %>
        <tr>
            <td> <img src="<%= request.getContextPath() + "/" + p.getImageUrl() %>" alt="Product Image" width="100" height="100"> </td>
            <td><%= p.getName() %></td>
            <td><%= p.getDescription() %></td>
            <td><%= p.getPrice() %></td>
            <td><%= p.getCategory() %></td>
            <td>
                <form action="EditProductServlet" method="get" style="display:inline;">
                    <input type="hidden" name="id" value="<%= p.getId() %>">
                    <button type="submit" class="edit">Edit</button>
                </form>
                <form action="DeleteProductServlet" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= p.getId() %>">
                    <button type="submit" class="delete" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    </div>
 
<%
    Connection conn = null;
    PreparedStatement stmtOrders = null, stmtCustomers = null, stmtMessages = null;
    ResultSet rsOrders = null, rsCustomers = null, rsMessages = null;

    try {
        conn = DBConnection.getConnection(); // Reuse DBConnection

        // Fetch Orders
        String sqlOrders = "SELECT * FROM orders ORDER BY order_time DESC";
        stmtOrders = conn.prepareStatement(sqlOrders);
        rsOrders = stmtOrders.executeQuery();

        // Fetch Customers
        String sqlCustomers = "SELECT * FROM users WHERE role='customer' ORDER BY created_at DESC";
        stmtCustomers = conn.prepareStatement(sqlCustomers);
        rsCustomers = stmtCustomers.executeQuery();

        // Fetch Messages
        String sqlMessages = "SELECT * FROM contact_messages ORDER BY created_at DESC";
        stmtMessages = conn.prepareStatement(sqlMessages);
        rsMessages = stmtMessages.executeQuery();
%>

 <h2 onclick="toggleOrder()" style="cursor: pointer; color: teal;">
    <span id="orderarrow">►</span>Order Management
</h2>
<div id="orderTable" style="display: none;">
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Payment Method</th>
        <th>Order Time</th>
        <th>Action</th>
    </tr>

<%
        while (rsOrders.next()) {
%>
    <tr>
        <td><%= rsOrders.getInt("id") %></td>
        <td><%= rsOrders.getString("first_name") + " " + rsOrders.getString("last_name") %></td>
        <td><%= rsOrders.getString("email") %></td>
        <td><%= rsOrders.getString("phone") %></td>
        <td><%= rsOrders.getString("payment_method") %></td>
        <td><%= rsOrders.getTimestamp("order_time") %></td>
        <td>
            <form action="DeleteOrderServlet" method="post">
                <input type="hidden" name="id" value="<%= rsOrders.getInt("id") %>">
                <button type="submit" onclick="return confirm('Are you sure you want to delete this order?');">Delete</button>
            </form>
        </td>
    </tr>
<%
        }
%>
</table>
</div>

 <h2 onclick="togglecusTable()" style="cursor: pointer; color: teal;">
    <span id="cusarrow">►</span> Customer Management
</h2>
<div id="cusTable" style="display: none;">
<table border="1">
    <tr>
        <th>User ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Joined</th>
        <th>Action</th>
    </tr>

<%
        while (rsCustomers.next()) {
%>
    <tr>
        <td><%= rsCustomers.getInt("userId") %></td>
        <td><%= rsCustomers.getString("name") %></td>
        <td><%= rsCustomers.getString("email") %></td>
        <td><%= rsCustomers.getTimestamp("created_at") %></td>
        <td>
            <form action="DeleteUserServlet" method="post">
                <input type="hidden" name="userId" value="<%= rsCustomers.getInt("userId") %>">
                <button type="submit" onclick="return confirm('Are you sure you want to delete this customer?');">Delete</button>
            </form>
        </td>
    </tr>
<%
        }
%>
</table>
</div>

 <h2 onclick="togglemsgTable()" style="cursor: pointer; color: teal;">
    <span id="msgarrow">►</span> Customer Messages</h2>
    <div id="msgTable" style="display: none;">
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Subject</th>
        <th>Message</th>
        <th>Received At</th>
    </tr>

<%
        while (rsMessages.next()) {
%>
    <tr>
        <td><%= rsMessages.getInt("id") %></td>
        <td><%= rsMessages.getString("first_name") + " " + rsMessages.getString("last_name") %></td>
        <td><%= rsMessages.getString("email") %></td>
        <td><%= rsMessages.getString("subject") %></td>
        <td><%= rsMessages.getString("message") %></td>
        <td><%= rsMessages.getTimestamp("created_at") %></td>
    </tr>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rsOrders != null) rsOrders.close();
        if (stmtOrders != null) stmtOrders.close();
        if (rsCustomers != null) rsCustomers.close();
        if (stmtCustomers != null) stmtCustomers.close();
        if (rsMessages != null) rsMessages.close();
        if (stmtMessages != null) stmtMessages.close();
        if (conn != null) conn.close();
    }
%>
</table>
</div>
</body>
</html>
