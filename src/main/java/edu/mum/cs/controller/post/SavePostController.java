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

@WebServlet("/post/newPost")
public class SavePostController extends HttpServlet {
    PostService postService = new PostServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String body = req.getParameter("body");
        String image = req.getParameter("image");
        System.out.println(body);
//        Post post = new Post();
//        post.setBody(body);
//        post.setImage(image);
//        postService.savePost(post);
        resp.sendRedirect("/index.jsp");
    }
}
