package edu.mum.cs.controller.follower;

import edu.mum.cs.model.User;
import edu.mum.cs.service.FollowerService;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.FollowerServiceImpl;
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

@WebServlet("/follower")
public class GetFollowerController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    FollowerService followerService = new FollowerServiceImpl();

    List<Long> followings = new ArrayList();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("loggedInUserId");
        User user = userService.findUserById(userId);
        req.setAttribute("followers", user.getFollowers());

        if(followings.size()  > 0){
            for(Long id : followings) {
                if(id == 0) {
                    followings.remove(0);
                }
            }
        } else {
            followings.add(0L);
        }

        req.setAttribute("followingsId", followings);
        System.out.println(user.getFollowers().size());
        RequestDispatcher rd = req.getRequestDispatcher("views/followers.jsp");
        rd.forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long userId = Long.parseLong(req.getParameter("userId"));
        Long followingId = Long.parseLong(req.getParameter("followingId"));

        User user = userService.findUserById(userId);
        User following = userService.findUserById(followingId);
        following.getFollowers().add(user);
        followerService.follow(following);


        if(!followings.contains(followingId)){
            followings.add(followingId);
        }


        HttpSession session = req.getSession();
        session.setAttribute("followingsId", followings);

        //String referer = req.getHeader("Referer");
        resp.sendRedirect("follower");
    }


}
