<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 2/15/2021
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<html>
<head>
    <title>FindAll</title>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
            <h2 style="color: red">Students</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="nav-link active" aria-current="page" href="/?action=create">Add New</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<h1 style=" color: blue; text-align: center">List Students</h1>
<table class="table">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Gender</th>
        <th scope="col">Age</th>
        <th scope="col">Address</th>
        <th scope="col">Phone</th>
        <th scope="col">Email</th>
        <th scope="col" colspan="2"></th>
    </tr>
    <c:forEach items="${index}" var="loop">
        <tr>
            <td class="table-light">${loop.getId()}</td>
            <td>${loop.getName()}</td>
            <td class="table-light">${loop.getGender()}</td>
            <td>${loop.getAge()}</td>
            <td class="table-light">${loop.getCountry()}</td>
            <td>${loop.getPhone()}</td>
            <td class="table-light">${loop.getEmail()}</td>
            <td class="table-danger">
                <a href="view/edit.jsp">
                    <button type="button" class="btn btn-light">Edit</button>
                </a>
            </td>
            <td class="table-warning">
                <a href="view/delete.jsp">
                    <button type="button" class="btn btn-light">Delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
