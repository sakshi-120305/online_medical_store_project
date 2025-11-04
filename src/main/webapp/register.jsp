<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - Online Medical Store</title>
    <style>
       /* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    display: flex;
    overflow: hidden;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: Arial, sans-serif;
    background-color: white;
    
}

/* Shared Container Style */
.login-container {
    width: 90%;
    max-width: 500px;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    text-align: center;
    transition: transform 0.3s ease;
}

.login-container:hover {
    transform: translateY(-5px);
}

h2 {
    margin-bottom: 20px;
    font-size: 1.8em;
    color: #333;
    font-weight: bold;
}

/* Input Groups */
.input-group {
    margin-bottom: 15px;
    text-align: left;
}

.input-group label {
    font-weight: bold;
    color: #333;
    font-size: 0.95em;
}

.input-group input,
.input-group select {
    width: 100%;
    padding: 10px;
    font-size: 1em;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-top: 5px;
    transition: border-color 0.3s ease;
}

.input-group input:focus,
.input-group select:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

/* Buttons */
button {
    width: 100%;
    padding: 12px;
    font-size: 1em;
    font-weight: bold;
    color: #fff;
    background: linear-gradient(45deg, #007bff, #0056b3);
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
}

button:hover {
    background: linear-gradient(45deg, #0056b3, #003f7f);
    transform: translateY(-2px);
}
.error-message {
    color: #b30000;
    background-color: #ffe5e5;
    border: 1px solid #ff4d4d;
    padding: 10px;
    border-radius: 5px;
    font-weight: 600;
    margin-bottom: 15px;
    text-align: center;
}



/* Login redirect */
.register-link {
    margin-top: 15px;
    font-size: 0.9em;
}

.register-link a {
    color: #6c2eb9;
    text-decoration: none;
    font-weight: 600;
}

.register-link a:hover {
    text-decoration: underline;
}
       
    </style>
</head>
<body>


    <div class="login-container">
    <%
        String error = request.getParameter("error");
        if (error != null && !error.isEmpty()) {
    %>
        <div class="error-message"><%= error %></div>
    <%
        }
    %>
        <h2>Create an Account</h2>
        <form action="register" method="post">
            <div class="input-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="role">Select Role:</label>
                <select id="role" name="role" required>
                    <option value="">-- Select Role --</option>
                    <option value="customer">Customer</option>
                    <option value="pharmacist">Pharmacist</option>
                </select>
            </div>
            <button type="submit">Register</button>
        </form>
        <div class="register-link">
            Already have an account? <a href="login.jsp">Login</a>
        </div>
    </div>
</body>
</html>
