<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
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

        /* Forgot Password Container */
        .forgot-container {
            width: 90%;
            max-width: 500px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .forgot-container:hover {
            transform: translateY(-5px);
        }

        h2 {
            margin-bottom: 20px;
            font-size: 1.8em;
            color: #333;
            font-weight: bold;
        }

        /* Input Styles */
        input[type="email"] {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="email"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
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

        /* Reset Link Styles */
        .reset-link {
            margin-top: 20px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 5px;
            word-break: break-all;
        }

        .reset-link a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .reset-link a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="forgot-container">
        <h2>Forgot Password</h2>
        
        <form method="post" action="ForgotPasswordServlet">
            <input type="email" name="email" placeholder="Enter your email" required>
            <button type="submit">Send Reset Link</button>
        </form>

        <% if (request.getAttribute("message") != null) { %>
            <div class="success-message">
                <%= request.getAttribute("message") %>
            </div>
        <% } %>

        <% 
            String link = (String) request.getAttribute("resetLink");
            if (link != null) { 
        %>
            <div class="reset-link">
                <strong>Reset Link:</strong> <a href="<%= link %>"><%= link %></a>
            </div>
        <% } %>
    </div>
</body>
</html>