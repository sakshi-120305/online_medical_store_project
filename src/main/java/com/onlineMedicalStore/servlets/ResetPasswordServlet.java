package com.onlineMedicalStore.servlets;

import java.io.IOException;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String token = request.getParameter("token");
        String newPassword = request.getParameter("newPassword");

        UserDAO userDAO = new UserDAO();
        boolean valid = userDAO.verifyResetToken(token);

        if (valid) {
            boolean updated = userDAO.updatePassword(token, newPassword);
            if (updated) {
                request.setAttribute("message", "Password has been reset successfully.");
            } else {
                request.setAttribute("message", "Failed to reset password.");
            }
        } else {
            request.setAttribute("message", "Invalid or expired token.");
        }

        request.getRequestDispatcher("reset_password.jsp").forward(request, response);
    }
}
