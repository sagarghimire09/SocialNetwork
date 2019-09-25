package edu.mum.cs.controller;

import edu.mum.cs.model.Ads;
import edu.mum.cs.model.User;
import edu.mum.cs.service.AdsService;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.AdsServiceImpl;
import edu.mum.cs.service.impl.UserServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;


@WebServlet(name = "HomeController", urlPatterns = {"/", "/home"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 3)
public class HomeController extends HttpServlet {
    private final static String UPLOAD_DIRECTORY = "/resources/fileUpload";
    UserService userService = new UserServiceImpl();
    AdsService adsService = new AdsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        User userLoggedIn = (User) session.getAttribute("loggedInUser");
        User userPosting = userService.findUserById(userLoggedIn.getUserId());
        List<Ads> adsList = adsService.findAllAds();


        request.setAttribute("adverts", adsList);
        session.setAttribute("posted", userPosting);
        session.setAttribute("localDateTimeFormat", new SimpleDateFormat("yyyy-MM-dd'T'hh:mm"));
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String postBody = "";
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multipart = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multipart) {
                    if (item.isFormField()) {
                        if ("postBody".equals(item.getFieldName())) {
                            postBody = item.getString();
                        }
                    } else {
                        String fileName = new File(item.getName()).getName();
                        String name = fileName == "" ? "noName.gif" : fileName;

                        //get the real path on your laptop or server
                        String realPath = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
                        String pathAccordingToYourSystem = removeTarget(realPath);

                        String imagePath = pathAccordingToYourSystem + File.separator + name;

                        File file = new File(imagePath);
                        item.write(file);
                        InputStream inputStream = new FileInputStream(file);
                        User userr = (User) session.getAttribute("loggedInUser");

                        savePost(postBody,inputStream, name, userr.getUserId());
                        response.sendRedirect("home");

                        getServletContext().setAttribute("message", "post updated successfully");
                    }
                }
            } catch (Exception e) {
                getServletContext().setAttribute("message", "there was an error updating your post, please try again");
            }
        }

    }

    void savePost(String postBody, InputStream inputStream, String imageName, Long userId) {
        String connectionURL = "jdbc:mysql://localhost:3306/socialdb";
        String user = "sagar-sys";
        String pass = "test1234";
        Connection con = null;


        LocalDateTime dateTime = LocalDateTime.now();
                java.sql.Date sqlDate = java.sql.Date.valueOf(dateTime.toLocalDate());

            try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL, user, pass);
            String query = "insert into posts(postBody, postImage, createdAt, user_id, imageName, status) values(?, ?, ?,?, ?,?)";
            PreparedStatement post = con.prepareStatement(query);

            post.setString(1, postBody);
            post.setBlob(2, inputStream);
            post.setDate(3, sqlDate);
            post.setLong(4, userId);
            post.setString(5, imageName);
            post.setBoolean(6, true);
            post.executeUpdate();

        } catch (Exception e) {
            getServletContext().setAttribute("message", "Sql server error!, there was an error updating your post, please try again");
        }
    }


    String removeTarget(String link) {
        String originalPath = "";
        String f = link.replaceAll("\\\\", "/");
        String[] splitf = f.split("/");

        for (String spl : splitf) {
            if (spl.equals("target")) {
                originalPath += "src/main/webapp/resources/fileUpload";
                break;
            } else {
                originalPath += spl + "/";
            }
        }
        return originalPath;
    }
}

