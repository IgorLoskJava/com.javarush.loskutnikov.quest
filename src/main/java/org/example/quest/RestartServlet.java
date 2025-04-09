package org.example.quest;

import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;


@WebServlet(name = "restart", value = "/restart")
public class RestartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if (request.getParameter("choice").equals("restart")) {
            DispatcherServlet.forward("/sessionservlet", request, response);
        } else if (request.getParameter("choice").equals("end")) {
            DispatcherServlet.forward("/end.jsp", request, response);

        }
        Writer writer = response.getWriter();
        writer.write("<html><body>");
        writer.write("<h1>Отправляйся за новыми заниями!</h1>");
        writer.write("<a href=\"http:\\\\javarush.com\">JavaRush</a>");
        writer.write("</body></html>");

    }


}

