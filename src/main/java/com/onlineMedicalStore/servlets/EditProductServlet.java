package com.onlineMedicalStore.servlets;

import dao.ProductDAO;
import model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;

@WebServlet("/EditProductServlet")
public class EditProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("id"));
            ProductDAO productDAO = new ProductDAO();
            Product product = productDAO.getProductById(productId);

            if (product != null) {
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("editProduct.jsp");
                dispatcher.forward(request, response);
            } else {
                response.sendRedirect("pharmacist.jsp?message=Product not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=Something went wrong while editing.");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            String imageUrl = request.getParameter("imageUrl");
            String category = request.getParameter("category");

            Product product = new Product(id, name, description, price, imageUrl, category);
            ProductDAO productDAO = new ProductDAO();

            if (productDAO.updateProduct(product)) {
                response.sendRedirect("pharmacist.jsp?message=Product updated successfully.");
            } else {
                response.sendRedirect("error.jsp?message=Failed to update product.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=Exception while updating product.");
        }
    }
}
