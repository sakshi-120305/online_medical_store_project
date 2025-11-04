<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*, model.Product" %>
<%
    List<Product> results = (List<Product>) request.getAttribute("searchResults");
%>

<h2>Search Results:</h2>
<% if (results != null && !results.isEmpty()) { %>
    <ul>
    <% for (Product p : results) { %>
        <li>
            <strong><%= p.getName() %></strong><br>
            Category: <%= p.getCategory() %><br>
            Price: ₹<%= p.getPrice() %><br>
            <img src="<%= p.getImageUrl() %>" alt="product" width="100">
        </li>
    <% } %>
    </ul>
<% } else { %>
    <p>No products found.</p>
<% } %>

</body>
</html>