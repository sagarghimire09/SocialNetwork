package edu.mum.cs.controller.profile;

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

@WebServlet("/profile")
public class ProfileController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("loggedInUserId");
        User user = userService.findUserById(userId);
        req.setAttribute("user", user);
        req.setAttribute("userPosts", user.getPosts());
        RequestDispatcher rd = req.getRequestDispatcher("views/profile.jsp");
        rd.forward(req, resp);
    }
}
