package edu.mum.cs.dao.impl;

import edu.mum.cs.dao.UserDao;
import edu.mum.cs.model.Post;
import edu.mum.cs.model.User;
import edu.mum.cs.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class UserDaoImpl implements UserDao {

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    @Override
    public User findUserById(Long id) {
        Session session = sessionFactory.openSession();
        User user = session.get(User.class, id);
        session.close();
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        Session session = sessionFactory.openSession();
//        User user = (User) session.createQuery("from User where email='" + email + "'").getSingleResult();

        User user = (User) session.createQuery("from User where email='"+email+"'").setMaxResults(1).stream().findFirst().orElse(null);

        session.close();
        return user;
    }

    @Override
    public Long saveUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Long id = (Long) session.save(user);
        transaction.commit();
        session.close();
        return id;
    }

    @Override
    public void updateUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(user);
        transaction.commit();
        session.close();
    }

    @Override
    public void deleteUser(Long id) {

    }

    @Override
    public List<User> findAllUser() {
        Session session = sessionFactory.openSession();
        List<User> userList = session.createQuery("from User where role != 'ROLE_ADMIN'").list();
        session.close();
        return userList;
    }

    public List<Post> findUserRelatedPosts(User user) {
        List<Post> postLists = new ArrayList();
        try {
            Session session = sessionFactory.openSession();
            List<Post> postList = session.createQuery("from Post where status= true").list();

            if (postList != null) {

                List<User> followers = user.getFollowers();
                List<Post> userPosts = postList.stream().filter(c->c.getUser().getUserId() == user.getUserId())
                        .collect(Collectors.toList());
                postLists.addAll(userPosts);


                for (Post post : postList) {
                    if (followers != null) {
                        for (User follower : followers) {
                            if(post.getUser().getUserId() == follower.getUserId()){
                                postLists.add(post);
                            }

                        }
                    }
                }

            }
            session.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return postLists.stream().sorted(new Comparator<Post>() {
            @Override
            public int compare(Post o1, Post o2) {
                return o1.getPostId().compareTo(o2.getPostId());
            }
        }).collect(Collectors.toList());
    }

}
