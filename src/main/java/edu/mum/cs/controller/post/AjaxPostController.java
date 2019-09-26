package edu.mum.cs.controller.post;

import edu.mum.cs.model.Post;
import edu.mum.cs.service.PostService;
import edu.mum.cs.service.impl.PostServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class AjaxPostController extends HttpServlet {
    PostService postService = new PostServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("loggedInUserId");
        int row = Integer.parseInt(req.getParameter("row"));
        List<Post> ajaxPosts = postService.getAjaxPost(userId, row);
        req.setAttribute("ajaxPosts", ajaxPosts);
        RequestDispatcher rd = req.getRequestDispatcher("views/partials/profile-ajax-post.jsp");
        rd.forward(req, resp);
    }
}
