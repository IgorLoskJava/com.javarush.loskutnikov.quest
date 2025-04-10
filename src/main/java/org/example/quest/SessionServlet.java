package org.example.quest;

import entity.Statistic;
import entity.User;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;


@WebServlet(name = "sessionservlet", value = "/sessionservlet")
public class SessionServlet extends HttpServlet {

    static int LIFE = 3;
    static int backCounter = 1;
    static int gameCounter = 1;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("username");
        while (!StringUtils.isBlank(name)) {
            User user = User.getInstance();
            user.setName(name);
            user.setLife(LIFE);

            HttpSession session = request.getSession();

            if (session.getAttribute("user") == null) {
                session.setAttribute("user", user);
                Statistic statistic = Statistic.getInstance();
            }

            RequestDispatcher requestDispatcher = request.getServletContext().getRequestDispatcher("/page1.jsp");
            requestDispatcher.forward(request, response);
        }

        DispatcherServlet.forward("/index.jsp", request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ++backCounter;
        String url = "/page" + backCounter + ".jsp";
        String parameter = request.getParameter("choice");

        if (request.getParameter("choice").equals("option1")) {
            if (url.equals("/page5.jsp")) {
                DispatcherServlet.forward("/winpage.jsp", request, response);
            }
            DispatcherServlet.forward(url, request, response);
        } else if (request.getParameter("choice").equals("option2")) {
            --backCounter;
            url = "/page" + backCounter + ".jsp";
            User.getInstance().setLife(LIFE = LIFE - 1);
            int userLife = User.getInstance().getLife();
            if (userLife <= 0) {
                LIFE = 3;
                DispatcherServlet.forward("/lose.jsp", request, response);
            }
            DispatcherServlet.forward(url, request, response);
        } else if (request.getParameter("choice").equals("restart")) {
            LIFE = 3;
            backCounter = 1;
            DispatcherServlet.forward("/index.jsp", request, response);
        }
    }


    public void destroy() {
    }
}