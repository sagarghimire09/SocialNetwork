package edu.mum.cs.controller.Ads;

import edu.mum.cs.service.AdsService;
import edu.mum.cs.service.impl.AdsServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteAds")
public class DeleteAdsController extends HttpServlet {
    AdsService adsService = new AdsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adsId = req.getParameter("adsId");
        if(adsId == "" || adsId == null) {
            //nothing
        }else {
            Long id = Long.parseLong(adsId);
            adsService.deleteAds(id);
        }
        resp.sendRedirect("getAds");
    }
}
