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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/profile-edit")
public class EditProfileController extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("loggedInUserId");
        User user = userService.findUserById(userId);
        req.setAttribute("user", user);
        RequestDispatcher rd = req.getRequestDispatcher("views/profile-edit.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long userId = Long.parseLong(req.getParameter("userId"));
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String workplace = req.getParameter("workplace");
        String designation = req.getParameter("designation");
        LocalDate birthDate = LocalDate.now();
        if(!req.getParameter("birthDate").equals("")) {
            birthDate = LocalDate.parse(req.getParameter("birthDate"));
        }
        String gender = req.getParameter("gender");
        User user = userService.findUserById(userId);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setWorkplace(workplace);
        user.setDesignation(designation);
        user.setBirthDate(birthDate);
        user.setGender(gender);
        userService.updateUser(user);
        HttpSession session = req.getSession();
        session.setAttribute("loggedInUser", user);
        resp.sendRedirect("profile");
    }
}
