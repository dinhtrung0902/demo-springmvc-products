<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Category</title>
</head>
<body>
    <h1>Category list</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="category" items="${categories}">
            <tr>
                <td>${category.getCategoryID()}</td>
                <td>${category.getCategoryName()}</td>
                <td>${category.getDescription()}</td>
                <td>
                    <a href="products/getProductsByCategoryID/${category.getCategoryID()}">
                    Show products</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="products/insertProduct">Insert new product</a>
</body>
<style>
    table, th, td{
        border: 1px solid black;
    }
</style>
</html>