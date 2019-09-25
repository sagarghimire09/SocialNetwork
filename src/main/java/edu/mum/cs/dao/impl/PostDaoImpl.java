package edu.mum.cs.dao.impl;

import edu.mum.cs.dao.PostDao;
import edu.mum.cs.model.Post;
import edu.mum.cs.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class PostDaoImpl implements PostDao {

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    @Override
    public Post findPostById(Long id) {
        Session session = sessionFactory.openSession();
        Post post = session.get(Post.class, id);
        session.close();
        return post;
    }

    @Override
    public Long savePost(Post post) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Long id = (Long)session.save(post);
        transaction.commit();
        session.close();
        return id;
    }

    @Override
    public void updatePost(Post post) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(post);
        transaction.commit();
        session.close();
    }

    @Override
    public void deletePost(Long id) {

    }

    @Override
    public List<Post> findAllPost() {
        Session session = sessionFactory.openSession();
        List<Post> postList = session.createQuery("from Post").list();
        session.close();
        return postList;
    }

    @Override
    public List<Post> getAjaxPost(Long id, int row) {
        Session session = sessionFactory.openSession();
        Query<Post> query = session.createQuery("from Post", Post.class);
        query.setFirstResult(row);
        query.setMaxResults(1);
        List<Post> ajaxPosts = query.list();
        return ajaxPosts;
    }
}
