package edu.mum.cs.controller;

import edu.mum.cs.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("loggedInUser");

        List<Long> activeUsers = new ArrayList();
        for(Long userId: activeUsers) {
            if(userId == user.getUserId()) {
                activeUsers.remove(userId);
            }
        }

        getServletContext().setAttribute("activeUsers", activeUsers);

         session.invalidate();
         resp.sendRedirect("login");
    }
}
