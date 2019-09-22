package edu.mum.cs.controller;

import edu.mum.cs.util.DbConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        // db connect
        try {
            Connection conn = new DbConnect().getConnect();
            String sql = "insert into user(firstName,lastName,email,password,status) values(?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, password);
            statement.setBoolean(5, true);
            int n = statement.executeUpdate();
            System.out.println(n);
            resp.sendRedirect("login.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
