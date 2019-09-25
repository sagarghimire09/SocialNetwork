package edu.mum.cs.controller;

import edu.mum.cs.model.Post;
import edu.mum.cs.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.List;

import edu.mum.cs.service.PostService;
import edu.mum.cs.service.UserService;
import edu.mum.cs.service.impl.PostServiceImpl;
import edu.mum.cs.service.impl.UserServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.*;


@WebServlet(name = "HomeController", urlPatterns = {"/", "/home"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 3)
public class HomeController extends HttpServlet {
    //private final static String UPLOAD_DIRECTORY = "C:/Users/Eduur/Desktop/Wap Project/SocialNetwork/src/main/webapp/resources/fileUpload";
    private final static String UPLOAD_DIRECTORY = "/resources/fileUpload";
    private  PostService postService = new PostServiceImpl();
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        User userLoggedIn = (User)session.getAttribute("loggedInUser");
        User userPosting = userService.findUserById(userLoggedIn.getUserId());

        session.setAttribute("posted", userPosting);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String postBody = "";
        String connectionURL = "jdbc:mysql://localhost:3306/socialdb";
        String user = "sagar-sys";
        String pass = "test1234";

        if(ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multipart = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                Connection con = null;

                for (FileItem item: multipart) {
                    if(item.isFormField()) {
                        if("postBody".equals(item.getFieldName())) {
                            postBody  = item.getString();
                        }
                    } else {
                        String name = new File(item.getName()).getName();

                        String realPath = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
                        String pathAccordingToYourSystem = removeTarget(realPath);


                        String imagePath = UPLOAD_DIRECTORY + File.separator + name;
                        String postImage = name;

                        File file = new File(imagePath);
                        if(!file.exists()){
                            item.write(file);
                            InputStream inputStream = new FileInputStream(file);
                            User userr = (User)session.getAttribute("loggedInUser");

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection(connectionURL, user, pass);
                            String query = "insert into posts(postBody, postImage, createdAt, user_id) values(?, ?, ?,?)";
                            PreparedStatement post = con.prepareStatement(query);

                            post.setString(1, postBody);
                            post.setBlob(2, inputStream);
                            post.setDate(3, Date.valueOf(LocalDate.now()));
                            post.setLong(4, userr.getUserId());

                            post.executeUpdate();

                            //Post post = new Post(postBody, (Blob)inputStream, LocalDate.now(), userr);
                            //postService.savePost(post);
                            response.sendRedirect("home");
                        } else {
                            response.sendRedirect("home");
                            getServletContext().setAttribute("message", "file already existing, try uploading a different file");
                        }
                    }
                }
                getServletContext().setAttribute("message", "post updated successfully");
            } catch (Exception e) {
                getServletContext().setAttribute("message", "there was an error updating your post, please try again");
            }
        }

    }

    String removeTarget(String link) {
        String originalPath = "";
        String f = link.replaceAll("\\\\", "/");
        String[] splitf = f.split("/");


       for(String spl: splitf) {
           if(spl.equals("target")) {
              // originalPath += "src/main/webapp/resources/fileUpload";
               originalPath += "fileUpload";
               break;
           } else {
               originalPath += spl +"/";
           }
       }

        return  originalPath;
    }
}
