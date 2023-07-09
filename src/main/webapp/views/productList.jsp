<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Product</title>
</head>
<body>
    <h1>Product List by CategoryID</h1>
    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.getProductID()}</td>
                <td>${product.getProductName()}</td>
                <td>${product.getFormattedPrice()}</td>
                <td>${product.getDescription()}</td>
                <td>
                    <a href="../../products/changeCategory/${product.getProductID()}">
                        Update this product
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="../../categories">Go back</a>
</body>
<style>
    table, th, td{
        border: 1px solid black;
    }
</style>
</html>