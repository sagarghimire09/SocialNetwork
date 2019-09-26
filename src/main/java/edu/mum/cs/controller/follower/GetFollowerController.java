package edu.mum.cs.controller.follower;

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

@WebServlet("/follower")
public class GetFollowerController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("loggedInUserId");
        User user = userService.findUserById(userId);
        req.setAttribute("followers", user.getFollowers());
        System.out.println(user.getFollowers().size());
        RequestDispatcher rd = req.getRequestDispatcher("views/followers.jsp");
        rd.forward(req,resp);
    }
}
