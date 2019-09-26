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
import java.io.IOException;

@WebServlet("/friendProfile")
public class FriendProfileController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long friendId = Long.parseLong(req.getParameter("friendId"));
        User friendUser = userService.findUserById(friendId);
        req.setAttribute("friendUser", friendUser);
        req.setAttribute("friendPosts", friendUser.getPosts());
        RequestDispatcher rd = req.getRequestDispatcher("views/friend-profile.jsp");
        rd.forward(req, resp);
    }
}
