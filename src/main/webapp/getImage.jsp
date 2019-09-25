<%@ page import="edu.mum.cs.model.User" %>
<%@ page import="edu.mum.cs.service.UserService" %>
<%@ page import="edu.mum.cs.service.impl.UserServiceImpl" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="edu.mum.cs.model.Post" %><%--
  Created by IntelliJ IDEA.
  User: Eduur
  Date: 9/24/2019
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    UserService userService = new UserServiceImpl();

    User userLoggedIn = (User)session.getAttribute("loggedInUser");
    User userPosting = userService.findUserById(userLoggedIn.getUserId());
    Long postId = Long.parseLong(request.getParameter("postId"));

    response.setContentType("image/gif");
    OutputStream imageStream = response.getOutputStream();

    Post post = userPosting.getPosts().stream().filter(c->c.getPostId() == postId).findAny().orElse(null);

    if(post != null) {
        byte[] imagePaths =  post.getPostImage();
        imageStream.write(imagePaths);
    }

    imageStream.flush();
    imageStream.close();
%>