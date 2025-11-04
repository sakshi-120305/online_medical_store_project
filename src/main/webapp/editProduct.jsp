<%@ page import="model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Product product = (Product) request.getAttribute("product");
    if (product == null) {
        response.sendRedirect("pharmacist.jsp?message=Product not found");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <style>
        body { font-family: Arial; margin: 40px; }
        form { max-width: 500px; margin: auto; }
        label, input, textarea, select { display: block; width: 100%; margin-bottom: 10px; }
        input[type="submit"] { width: auto; background-color: #4CAF50; color: white; border: none; padding: 10px 20px; }
    </style>
</head>
<body>
    <h2>Edit Product</h2>
    <form action="EditProductServlet" method="post">
        <input type="hidden" name="id" value="<%= product.getId() %>"/>

        <label>Name:</label>
        <input type="text" name="name" value="<%= product.getName() %>" required/>

        <label>Description:</label>
        <textarea name="description" required><%= product.getDescription() %></textarea>

        <label>Price:</label>
        <input type="number" step="0.01" name="price" value="<%= product.getPrice() %>" required/>

        <label>Image URL:</label>
        <input type="text" name="imageUrl" value="<%= product.getImageUrl() %>" required/>

        <label>Category:</label>
        <input type="text" name="category" value="<%= product.getCategory() %>" required/>

        <input type="submit" value="Update Product"/>
    </form>
</body>
</html>
