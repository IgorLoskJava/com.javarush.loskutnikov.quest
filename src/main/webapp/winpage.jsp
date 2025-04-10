<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Win Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="p-3 mb-2 bg-success-subtle text-success-emphasis">
    <div class="container">
        <div class="row">
            <div>

                <%
                    User user = User.getInstance();
                    out.print(user.getName());
                %>, поздравляю! Квест успешно пройден!
                <br>
                Хочешь попробовать пройти квест еще раз?
                <br>
                <br>


            </div>
            <div class="row">
                <div class="col">
                    <form action="restart" method="post">
                        <input type="radio" id="option1" name="choice" value="restart">
                        <label for="option1">Начать сначала</label><br>

                        <input type="radio" id="option2" name="choice" value="option2">
                        <label for="option2">Приступить к обучению</label><br>

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
