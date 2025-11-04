package com.onlineMedicalStore.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/AddProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
                 maxFileSize = 1024 * 1024 * 10,       // 10MB
                 maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Check user role
    	HttpSession session = request.getSession(false);
    	if (session == null || !"pharmacist".equals(session.getAttribute("role"))) {
    	    response.sendRedirect("error.jsp?message=Access Denied");
    	    return;
    	}


        try {
            // ✅ Get form data
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            String category = request.getParameter("category");

            // ✅ Handle image file
            Part imagePart = request.getPart("image");
            String fileName = Paths.get(imagePart.getSubmittedFileName()).getFileName().toString();

            // ✅ Save image to /images folder inside the deployed app directory
            String uploadPath = getServletContext().getRealPath("/images");
            Files.createDirectories(Paths.get(uploadPath)); // Ensure the folder exists

            String filePath = uploadPath + "/" + fileName;
            try (InputStream input = imagePart.getInputStream()) {
                Files.copy(input, Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);
            }

            // ✅ Image filename to save in DB
            String imageUrl = "images/" + fileName;
            // ✅ Basic validation
            if (name == null || name.trim().isEmpty() || price <= 0 || category == null || category.trim().isEmpty()) {
                response.sendRedirect("error.jsp?message=Invalid product data. Please check the input fields.");
                return;
            }

            // ✅ Insert into database using DAO
            ProductDAO productDAO = new ProductDAO();
            boolean success = productDAO.addProduct(name, description, price, imageUrl, category);

            if (success) {
                response.sendRedirect("pharmacist.jsp?message=Product added successfully!");
            } else {
                response.sendRedirect("error.jsp?message=Error adding product.");
            }

        } catch (NumberFormatException e) {
            response.sendRedirect("error.jsp?message=Invalid price format. Please enter a valid number.");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=An error occurred. Please try again.");
        }
    }
}
