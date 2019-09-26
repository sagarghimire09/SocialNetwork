package edu.mum.cs.controller;

import edu.mum.cs.model.User;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    String url = "jdbc:mysql://localhost:3306/socialdb";
    String username = "sagar-sys";
    String pass = "test1234";
    List<Long> activeUsers = new ArrayList();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
        rd.forward(req, resp);
    }

    UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

            user = userService.authenticate(user);

            if (user != null) {
                HttpSession session = req.getSession();
                session.setAttribute("loggedInUser", user);
                //login
                activeUsers.add(user.getUserId());
                getServletContext().setAttribute("activeUsers", activeUsers);

                session.setAttribute("loggedInUser", user);
                session.setAttribute("loggedInUserId", user.getUserId());
                resp.sendRedirect("home");
            } else {
                req.setAttribute("errMsg", "login failed! wrong details");
                RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
                rd.forward(req, resp);
            }

//        } catch (Exception e) {
//            resp.sendRedirect("home");
//        }
    }

}
