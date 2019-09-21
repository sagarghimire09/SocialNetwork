package edu.mum.cs.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("username");
        String password = req.getParameter("password");
        if(uname.equals("sagar") && password.equals("12345")) {
            resp.sendRedirect("newsfeed.jsp");
        }
    }
}
