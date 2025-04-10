<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Start Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


<br/>
<div class="p-3 mb-2 bg-success-subtle text-success-emphasis">
    <div class="container">
        <div class="row">
            <div class="col">
                <h2>
                    <p class="text-center"><c:out value="JavaRush. Module 3. Quest"/></p>
                </h2>

                Привет, юный друг! Предлагаю тебе пройти небольшой квест, который поможет найти свой путь в профессии
                разработчика.
                <br>Внимательно читай вопросы и выбирай один из двух предложенных вариантов ответа.
                <br>Надеюсь, ты сделаешь правильный выбор. Удачи!
                <br>
                Для начала давай познакомимся.

            </div>
            <div class="row">
                <div class="col">
                    <form action="sessionservlet" method="get">
                        <br>
                        Как тебя зовут?
                        <input type="text" name="username"/>
                        <input class="btn btn-primary" type="submit" value="Продолжить">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>