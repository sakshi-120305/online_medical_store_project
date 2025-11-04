package com.onlineMedicalStore.servlets;

import java.io.*;
import java.sql.*;
import java.util.UUID;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/PlaceOrderServlet")
@MultipartConfig
public class PlaceOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String UPLOAD_DIR = "uploads";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String whatsapp = request.getParameter("whatsapp_number"); // Customer's WhatsApp number
        String paymentMethod = request.getParameter("payment_method");

        String screenshotPath = null;

        if (!"cod".equalsIgnoreCase(paymentMethod)) {
            Part screenshotPart = request.getPart("payment_screenshot");
            if (screenshotPart != null && screenshotPart.getSize() > 0) {
                String fileName = UUID.randomUUID().toString() + "_" + screenshotPart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdirs();

                screenshotPath = UPLOAD_DIR + "/" + fileName;
                screenshotPart.write(uploadPath + File.separator + fileName);
            }
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/medicalstore", "root", "System@2218");

            String sql = "INSERT INTO orders (first_name, last_name, address, email, phone, whatsapp_number, payment_method, screenshot_path) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, address);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, whatsapp);
            ps.setString(7, paymentMethod);
            ps.setString(8, screenshotPath);

            ps.executeUpdate();
            conn.close();

            // Messages
            String pharmacistMessage = paymentMethod.equalsIgnoreCase("cod") ?
                "📦 New *Cash on Delivery* order placed by " + firstName + " " + lastName + "." :
                "💰 New *Prepaid* order placed by " + firstName + " " + lastName + ". Screenshot is uploaded.";

            String customerMessage = "✅ Hi " + firstName + ", your order has been successfully placed! " +
                "We'll notify you once it's confirmed. Thank you for choosing Online Medical Store!";

            // Send WhatsApp messages
            sendWhatsAppMessage("8446113809", pharmacistMessage); // Pharmacist number
            sendWhatsAppMessage(whatsapp, customerMessage);       // Customer number

            // Redirect
            response.sendRedirect("thankyou.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<h3 style='color:red;'>Error processing order: " + e.getMessage() + "</h3>");
        }
    }

    // Stub: Replace with actual WhatsApp API logic
    private void sendWhatsAppMessage(String toNumber, String message) {
        // You can integrate Twilio or another API here
        // Example format for Twilio: "whatsapp:+919876543210"

        System.out.println("WhatsApp to " + toNumber + ": " + message);

        // If using Twilio, you would do:
        /*
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message.creator(
            new PhoneNumber("whatsapp:" + toNumber),
            new PhoneNumber("whatsapp:+14155238886"), // Twilio Sandbox
            message
        ).create();
        */
    }
}
