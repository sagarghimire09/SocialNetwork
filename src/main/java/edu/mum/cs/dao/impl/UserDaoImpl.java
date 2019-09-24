package edu.mum.cs.dao.impl;

import edu.mum.cs.dao.UserDao;
import edu.mum.cs.model.User;
import edu.mum.cs.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class UserDaoImpl implements UserDao {

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    @Override
    public User findUserById(Long id) {
        return null;
    }

    @Override
    public User getUserByEmail(String email) {
        Session session = sessionFactory.openSession();
        User user = session.get(User.class, email);
        session.close();
        return user;
    }

    @Override
    public Long saveUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Long id = (Long)session.save(user);
        transaction.commit();
        session.close();
        return id;
    }

    @Override
    public void updateUser(User user) {

    }

    @Override
    public void deleteUser(Long id) {

    }

    @Override
    public List<User> findAllPost() {
        return null;
    }
}
