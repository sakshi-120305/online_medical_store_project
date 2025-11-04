package com.onlineMedicalStore.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Invalidate session if it exists
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
            System.out.println("Session invalidated successfully.");
        } else {
            System.out.println("No active session found.");
        }

        // Redirect to login page with a logout message using URL encoding
        String logoutMessage = java.net.URLEncoder.encode("You have been successfully logged out.", "UTF-8");
        response.sendRedirect("login.jsp?message=" + logoutMessage);
    }
}
