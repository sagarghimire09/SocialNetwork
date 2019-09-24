package edu.mum.cs.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)servletRequest).getSession(false);
        String requestedUri = ((HttpServletRequest)servletRequest).getRequestURI();
        if(session == null || session.getAttribute("loggedInUser") == null) {
            if(requestedUri.contains("login") || requestedUri.contains("register") || requestedUri.contains("resources/")) {
                filterChain.doFilter(servletRequest, servletResponse);
            }else{
                ((HttpServletResponse)servletResponse).sendRedirect("login");
            }
        }else if(requestedUri.contains("login") || requestedUri.contains("register")) {
            ((HttpServletResponse)servletResponse).sendRedirect("home");
        }else{
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
}
