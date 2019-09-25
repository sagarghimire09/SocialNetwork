package edu.mum.cs.filter;

import edu.mum.cs.model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/user", "/editUser", "/getAds", "/deleteAds", "/editAds", "/saveAds", "/post"})
public class RoleFilter implements Filter {

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpSession session = ((HttpServletRequest)req).getSession();
        User user = (User)session.getAttribute("loggedInUser");
        if(user.getRole().equals("ROLE_ADMIN")){
            chain.doFilter(req, resp);
        } else{
            ((HttpServletResponse)resp).sendRedirect("home");
        }
    }
}
