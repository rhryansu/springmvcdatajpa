<%--
  Created by IntelliJ IDEA.
  User: ryansu
  Date: 3/12/21
  Time: 2:18 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Pokemon Manager</title>
</head>
<body>
<div align="center">
    <h2>Pokemon Manager</h2>
    <form method="get" action="/search">
        <input type="text" name="keyword"/> &nbsp;
        <input type="submit" value="Search"/>
    </form>
    <h3><a href="${pageContext.request.contextPath}/new">New Pokemon</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Pokemon Name</th>
            <th>Pokemon Type</th>
            <th>Pokemon Speed</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listPokemon}" var="pokemon">
            <tr>
                <td>${pokemon.id}</td>
                <td>${pokemon.pokename}</td>
                <td>${pokemon.poketype}</td>
                <td>${pokemon.pokespeed}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/edit?id=${pokemon.id}">Edit</a>&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/delete?id=${pokemon.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
