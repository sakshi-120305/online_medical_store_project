<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String errorMessage = request.getParameter("error");
    String role = (String) session.getAttribute("role");

    if (role != null) {
        if (role.equals("pharmacist")) {
            response.sendRedirect("pharmacist.jsp");
        } else if (role.equals("customer")) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
        return;
    }
%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Online Medical Store</title>
    <link rel="stylesheet" href="css/loginstyle.css">
    
</head>
<body>

    <div class="login-container">
    <%
    String message = request.getParameter("message");
    if (message != null && !message.isEmpty()) {
%>
    <div class="success-message"><%= message %></div>
<%
    }
%>
        <h2>Login to Online Medical Store</h2>

        <% if (errorMessage != null) { %>
            <div class="error-message" style="display:block;"><%= errorMessage %></div>
        <% } %>

        <form id="loginForm" action="login" method="post" onsubmit="return validateForm()">
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>

       <a href="forgot_password.jsp" class="forgot-password">Forgot Password?</a>
       

        <div class="divider">New here?</div>

        <div class="register-link">
            <a href="register.jsp">
                <button type="button">Create New Account</button>
            </a>
        </div>
    </div>

    <div class="back-to-home">
        <a href="index.jsp" class="back-button">← Back to Home</a>
        
    </div>

    <script src="js/script.js"></script>
</body>
</html>
