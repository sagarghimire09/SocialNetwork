package edu.mum.cs.dao.impl;

import edu.mum.cs.dao.AdsDao;
import edu.mum.cs.model.Ads;
import edu.mum.cs.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class AdsDaoImpl implements AdsDao {
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    @Override
    public Ads findAdsById(Long id) {
        Session session = sessionFactory.openSession();
        Ads ads = session.get(Ads.class, id);
        session.close();
        return ads;
    }

    @Override
    public Long saveAds(Ads ads) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Long id = (Long)session.save(ads);
        transaction.commit();
        session.close();
        return id;
    }

    @Override
    public void updateAds(Ads ads) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(ads);
        transaction.commit();
        session.close();
    }

    @Override
    public void deleteAds(Long id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Ads ads = session.get(Ads.class, id);
        session.delete(ads);
        transaction.commit();
        session.close();
    }

    @Override
    public List<Ads> findAllAds() {
        Session session = sessionFactory.openSession();
        List<Ads> adsList = session.createQuery("from Ads").list();
        session.close();
        return adsList;
    }
}
