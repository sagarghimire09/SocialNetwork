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

@WebServlet("/editAds")
public class EditAdsController extends HttpServlet {
    AdsService adsService = new AdsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adsId = req.getParameter("adsId");
        if(adsId == "" || adsId == null) {
            resp.sendRedirect("getAds");
        }else {
            Long id = Long.parseLong(adsId);
            Ads ads = adsService.findAdsById(id);
            req.setAttribute("ads", ads);
            RequestDispatcher rd = req.getRequestDispatcher("views/ads-edit.jsp");
            rd.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long adsId = Long.parseLong(req.getParameter("adsId"));
        String adsLink = req.getParameter("adsLink");
        String adsBody = req.getParameter("adsBody");
        boolean status = false;
        if(req.getParameterMap().containsKey("status")) {
            status = true;
        }
        Ads ads = adsService.findAdsById(adsId);
        ads.setAdsLink(adsLink);
        ads.setAdsBody(adsBody);
        ads.setStatus(status);
        adsService.updateAds(ads);
        resp.sendRedirect("getAds");
    }
}
