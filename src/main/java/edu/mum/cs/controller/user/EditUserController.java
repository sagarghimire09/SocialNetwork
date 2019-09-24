package edu.mum.cs.controller.user;

import edu.mum.cs.model.User;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editUser")
public class EditUserController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long userId = Long.parseLong(req.getParameter("userId"));
        boolean status = Boolean.getBoolean(req.getParameter("status"));
        User user = userService.findUserById(userId);
        System.out.println(user);
        user.setStatus(status);
        userService.updateUser(user);
        resp.sendRedirect("user");
    }
}
