<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
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
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        /* Reset Password Container */
        .reset-container {
            width: 90%;
            max-width: 500px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            transition: transform 0.3s ease;
            position: relative;
        }

        .reset-container:hover {
            transform: translateY(-5px);
        }

        h2 {
            margin-bottom: 20px;
            font-size: 1.8em;
            color: #333;
            font-weight: bold;
        }

        /* Input Styles */
        input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        /* Hidden token input */
        input[type="hidden"] {
            display: none;
        }

        /* Button Styles */
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

        /* Message Styles */
        .success-message {
            color: green;
            background-color: #e6ffed;
            border: 1px solid #66bb6a;
            padding: 10px;
            margin: 15px 0;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
        }

        .error-message {
            color: #ff0000;
            background-color: #ffe6e6;
            border: 1px solid #ff4d4d;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
        }

        /* Back to Login Button */
        .back-to-login {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            font-size: 0.9em;
            color: #007bff;
            background-color: transparent;
            border: 1px solid #007bff;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .back-to-login:hover {
            color: #fff;
            background-color: #007bff;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="reset-container">
        <h2>Reset Your Password</h2>
        
        <form method="post" action="ResetPasswordServlet">
            <input type="hidden" name="token" value="<%= request.getParameter("token") != null ? request.getParameter("token") : "" %>">
            <input type="password" name="newPassword" placeholder="Enter new password" required>
            <button type="submit">Update Password</button>
        </form>

        <% if (request.getAttribute("message") != null) { %>
            <div class="success-message">
                <%= request.getAttribute("message") %>
            </div>
        <% } %>

        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <a href="login.jsp" class="back-to-login">Back to Login</a>
    </div>
</body>
</html>