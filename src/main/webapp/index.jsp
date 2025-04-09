<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
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
<h2><%= "JavaRush. Module 3. Quest" %>
</h2>
<br/>
<div>Привет, юный друг! Предлагаю тебе пройти небольшой квест, который поможет найти свой путь в профессии разработчика.
    <br>Внимательно читай вопросы и выбирай один из двух предложенных вариантов ответа.
    <br>Надеюсь, ты сделаешь правильный выбор. Удачи!
    <br>
    Для начала давай познакомимся.
    <br>
    <br>
</div>
<form action="sessionservlet" method="get">
    Как тебя зовут? <input type="text" name="username"/>
    <input type="submit" name="Enter" value="Продолжить">
</form>
</body>
</html>