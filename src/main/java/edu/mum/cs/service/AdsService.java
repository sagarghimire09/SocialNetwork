package edu.mum.cs.service;

import edu.mum.cs.model.Ads;

import java.util.List;

public interface AdsService {
    Ads findAdsById(Long id);
    Long saveAds(Ads ads);
    void updateAds(Ads ads);
    void deleteAds(Long id);
    List<Ads> findAllAds();
}
