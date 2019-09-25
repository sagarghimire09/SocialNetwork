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
import java.util.List;

@WebServlet("/getAds")
public class GetAdsController extends HttpServlet {
    AdsService adsService = new AdsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Ads> adsList = adsService.findAllAds();
        req.setAttribute("adsList", adsList);
        System.out.println(adsList.size());
        RequestDispatcher rd = req.getRequestDispatcher("views/ads-list.jsp");
        rd.forward(req, resp);
    }
}
