package com.onlineMedicalStore.servlets;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("id"));
            ProductDAO productDAO = new ProductDAO();

            if (productDAO.deleteProduct(productId)) {
                response.sendRedirect("pharmacist.jsp?message=Product deleted successfully.");
            } else {
                response.sendRedirect("error.jsp?message=Failed to delete product.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=Exception occurred while deleting.");
        }
    }
}
