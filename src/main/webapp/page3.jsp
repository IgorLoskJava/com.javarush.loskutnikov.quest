<%@ page import="entity.User" %>
<%@ page import="entity.Service" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page 3</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="p-3 mb-2 bg-success-subtle text-success-emphasis">
    <div class="container">
        <div class="row">
            <div>

                Статистика игрока: <%
                User user = User.getInstance();
                out.print(user.getName());
            %>. Количество попыток: <% out.print(user.getLife());%>.
                <br>
                <br>
                <%
                    out.print(Service.getQuestions().get(2));
                %>


            </div>
            <div class="row">
                <div class="col">
                    <form action="sessionservlet" method="post">
                        <input type="radio" id="option1" name="choice" value="option1">
                        <label for="option1"><% out.print(Service.getAnswers().get(4)); %></label><br>

                        <input type="radio" id="option2" name="choice" value="option2">
                        <label for="option2"><% out.print(Service.getAnswers().get(5)); %></label><br>

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
