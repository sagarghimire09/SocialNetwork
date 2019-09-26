package edu.mum.cs.dao.impl;

import edu.mum.cs.dao.FollowerDao;
import edu.mum.cs.model.User;
import edu.mum.cs.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class FollowerDaoImpl implements FollowerDao {
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    @Override
    public void follow(User user, User following) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        following.getFollowers().add(user);
        session.update(following);
        transaction.commit();
        session.close();
    }

    @Override
    public void unfollow(User user, User following) {

    }


}
