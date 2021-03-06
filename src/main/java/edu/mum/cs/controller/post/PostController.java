package edu.mum.cs.controller.post;

import edu.mum.cs.model.Post;
import edu.mum.cs.service.PostService;
import edu.mum.cs.service.impl.PostServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/post")
public class PostController extends HttpServlet {
    PostService postService = new PostServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Post> postList = postService.findAllPost();
        req.setAttribute("postList", postList);
        RequestDispatcher rd = req.getRequestDispatcher("views/post-list.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
