<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: eberk
  Date: 15.01.2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Countries</title>
</head>
<body>
<jsp:useBean id="countryBean" scope="request" class="beans.CountryBean"/>
<table>
    <thead>
    <th>id</th>
    <th>name</th>
    </thead>
    <tbody>
    <c:forEach items="${countryBean.countries}" var="country">
        <tr>
            <td>${country.id}</td>
            <td>${country.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<form action="countries" method="post">
    <label for="country_name">Новая страна</label>
    <input type="text" name="country_name" id="country_name">
    <input type="submit" value="Add">
</form>
</body>
</html>
