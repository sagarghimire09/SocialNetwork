package edu.mum.cs.model;

import org.hibernate.annotations.CreationTimestamp;
import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "ads")
public class Ads {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long adsId;
    private String adsImage;
    private String adsBody;
    private String adsLink;
    @CreationTimestamp
    private LocalDate createdAt;
    private boolean status;

    public Ads() {

    }

    public Ads(String adsImage, String adsBody, String adsLink, boolean status) {
        this.adsImage = adsImage;
        this.adsBody = adsBody;
        this.adsLink = adsLink;
        this.status = status;
    }

    public Long getAdsId() {
        return adsId;
    }

    public void setAdsId(Long adsId) {
        this.adsId = adsId;
    }

    public String getAdsImage() {
        return adsImage;
    }

    public void setAdsImage(String adsImage) {
        this.adsImage = adsImage;
    }

    public String getAdsBody() {
        return adsBody;
    }

    public void setAdsBody(String adsBody) {
        this.adsBody = adsBody;
    }

    public String getAdsLink() {
        return adsLink;
    }

    public void setAdsLink(String adsLink) {
        this.adsLink = adsLink;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
