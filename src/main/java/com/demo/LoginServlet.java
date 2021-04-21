package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws IOException {

    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    if (userName.equals("demoUser") && password.equals("demoPassword")) {
      HttpSession session = request.getSession(true);
      session.setAttribute("userName", userName);
      session.setAttribute("firstName", "Demo");
      session.setAttribute("lastName", "User");
      session.setAttribute("email", "demoUser@gmail.com");
      response.sendRedirect("success.jsp");
    } else {
      response.sendRedirect("failed.jsp");
    }

  }

}

