package com.onlineMedicalStore.servlets;

import dao.UserDAO;
import model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate input
        if (email == null || password == null || email.trim().isEmpty() || password.trim().isEmpty()) {
            String errorMsg = URLEncoder.encode("Please provide both email and password.", "UTF-8");
            response.sendRedirect("login.jsp?error=" + errorMsg);
            return;
        }

        UserDAO userDAO = new UserDAO();
        User user = userDAO.authenticateUser(email, password);

        if (user != null) {
            // Successful login
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user); // Store the user object
            session.setAttribute("role", user.getRole().toLowerCase()); // ✅ Store role for access control

            // Set session timeout (30 minutes)
            session.setMaxInactiveInterval(30 * 60);

            // Update last login time
            if (!userDAO.updateLoginTime(user.getUserId())) {
                System.err.println("Failed to update login time for user: " + user.getEmail());
            }

            // Redirect based on role
            String role = user.getRole().toLowerCase();
            if (role.equals("pharmacist")) {
                response.sendRedirect("pharmacist.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } else {
            // User not found
            String errorMsg = URLEncoder.encode("Invalid email or password. Please try again.", "UTF-8");
            response.sendRedirect("login.jsp?error=" + errorMsg);
        }
    }
}
