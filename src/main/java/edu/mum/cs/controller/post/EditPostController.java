package edu.mum.cs.controller.post;

import edu.mum.cs.model.Post;
import edu.mum.cs.service.PostService;
import edu.mum.cs.service.impl.PostServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editPost")
public class EditPostController extends HttpServlet {
    PostService postService = new PostServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long postId = Long.parseLong(req.getParameter("postId"));
        boolean status = false;
        if(req.getParameter("status").equals("true")){
            status = true;
        }
        Post post = postService.findPostById(postId);
        post.setStatus(status);
        postService.updatePost(post);
        resp.sendRedirect("post");
    }
}
