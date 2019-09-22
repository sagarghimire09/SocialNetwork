package edu.mum.cs.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DbConnect {
    String url = "jdbc:mysql://localhost:3306/socialdb";
    String uname = "sagar-sys";
    String pass = "test1234";

    public DbConnect() {
    }

    public Connection getConnect() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, uname, pass);
    }
}
