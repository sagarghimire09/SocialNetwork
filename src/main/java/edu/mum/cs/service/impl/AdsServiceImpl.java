package edu.mum.cs.service.impl;

import edu.mum.cs.dao.AdsDao;
import edu.mum.cs.dao.impl.AdsDaoImpl;
import edu.mum.cs.model.Ads;
import edu.mum.cs.service.AdsService;

import java.util.List;

public class AdsServiceImpl implements AdsService {
    AdsDao adsDao = new AdsDaoImpl();
    @Override
    public Ads findAdsById(Long id) {
        return adsDao.findAdsById(id);
    }

    @Override
    public Long saveAds(Ads ads) {
        return adsDao.saveAds(ads);
    }

    @Override
    public void updateAds(Ads ads) {
        adsDao.updateAds(ads);
    }

    @Override
    public void deleteAds(Long id) {
        adsDao.deleteAds(id);
    }

    @Override
    public List<Ads> findAllAds() {
        return adsDao.findAllAds();
    }
}
