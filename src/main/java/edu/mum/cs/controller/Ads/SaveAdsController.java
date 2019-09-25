package edu.mum.cs.controller.Ads;

import edu.mum.cs.model.Ads;
import edu.mum.cs.service.AdsService;
import edu.mum.cs.service.impl.AdsServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/saveAds")
public class SaveAdsController extends HttpServlet {
    AdsService adsService = new AdsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("views/ads-form.jsp");
        rd.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adsLink = req.getParameter("adsLink");
        String adsBody = req.getParameter("adsBody");
        String adsImage = req.getParameter("adsImage");
        boolean status = false;
        if(req.getParameterMap().containsKey("status")) {
            status = true;
        }
        Ads ads = new Ads(adsImage, adsBody, adsLink, status);
        adsService.saveAds(ads);
        resp.sendRedirect("getAds");
    }
}