package edu.mum.cs.dao;

import edu.mum.cs.model.Ads;

import java.util.List;

public interface AdsDao {
    Ads findAdsById(Long id);
    Long saveAds(Ads ads);
    void updateAds(Ads ads);
    void deleteAds(Long id);
    List<Ads> findAllAds();
}
