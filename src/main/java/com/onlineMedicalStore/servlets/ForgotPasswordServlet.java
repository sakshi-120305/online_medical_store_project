package com.onlineMedicalStore.servlets;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String token = UUID.randomUUID().toString();
        Timestamp expiry = new Timestamp(System.currentTimeMillis() + 30 * 60 * 1000); // 30 mins

        UserDAO userDAO = new UserDAO();
        boolean userExists = userDAO.checkEmailExists(email);

        if (userExists) {
            userDAO.saveResetToken(email, token, expiry);
            String resetLink = "http://localhost:8081/OnlineMedicalStore/reset_password.jsp?token=" + token;
            request.setAttribute("message", "Reset link generated below.");
            request.setAttribute("resetLink", resetLink);
        } else {
            request.setAttribute("message", "If the email exists, the reset link is shown.");
        }

        request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
    }
}
