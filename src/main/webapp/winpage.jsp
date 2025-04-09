<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: losku
  Date: 09.04.2025
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Win Page</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    User user = User.getInstance();
    out.print(user.getName());
%>, поздравляю! Квест успешно пройден!
<br>
Хочешь попробовать пройти квест еще раз?
<br>
<br>
<div>
    <form action="restart" method="post">
        <input type="radio" id="option1" name="choice" value="restart">
        <label for="option1">Начать сначала</label><br>

        <input type="radio" id="option2" name="choice" value="option2">
        <label for="option2">Приступить к обучению</label><br>

        <input type="submit" value="Отправить">
    </form>
</div>

</body>
</html>
