<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lose Page</title>
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
%>, к сожалению, квест не пройден.
<br>
Возможно, тебе стоит рассмотреть другие профессии?
<br>
<div>
    <form action="restart" method="post">
        <input type="radio" id="option1" name="choice" value="restart">
        <label for="option1">Начать сначала</label><br>
        <input type="radio" id="option2" name="choice" value="end">
        <label for="option2">Завершить квест</label><br>
        <input type="submit" value="Отправить">
    </form>
</div>
</body>
</html>
