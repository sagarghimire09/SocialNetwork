package edu.mum.cs.service.impl;

import edu.mum.cs.dao.UserDao;
import edu.mum.cs.dao.impl.UserDaoImpl;
import edu.mum.cs.model.Post;
import edu.mum.cs.model.User;
import edu.mum.cs.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public User findUserById(Long id) {
        return userDao.findUserById(id);
    }

    @Override
    public Long saveUser(User user) {
        return userDao.saveUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void deleteUser(Long id) {

    }

    @Override
    public List<User> findAllUser() {
        return userDao.findAllUser();
    }

    @Override
    public User authenticate(User user) {
        User verifiedUser = userDao.getUserByEmail(user.getEmail());
        if(verifiedUser != null && verifiedUser.getPassword().equals(user.getPassword())) {
            return verifiedUser;
        }
        return null;
    }

    @Override
    public List<Post> findUserRelatedPosts(User user) {
        return userDao.findUserRelatedPosts(user);
    }


}
