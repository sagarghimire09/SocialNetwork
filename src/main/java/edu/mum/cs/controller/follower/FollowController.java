package edu.mum.cs.controller.follower;

import javax.servlet.RequestDispatcher;
import edu.mum.cs.model.User;
import edu.mum.cs.service.FollowerService;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.FollowerServiceImpl;
import edu.mum.cs.service.impl.UserServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/follow")
public class FollowController extends HttpServlet {
//    UserService userService = new UserServiceImpl();
//    FollowerService followerService = new FollowerServiceImpl();
//
//
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Long userId = Long.parseLong(req.getParameter("userId"));
//        Long followingId = Long.parseLong(req.getParameter("followingId"));
//        User user = userService.findUserById(userId);
//        User following = userService.findUserById(followingId);
//        following.getFollowers().add(user);
//        followerService.follow(following);
//
//        String referer = req.getHeader("Referer");
//        resp.sendRedirect(referer);
//    }
}
