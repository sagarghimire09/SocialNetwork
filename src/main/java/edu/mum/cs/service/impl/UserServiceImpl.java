package edu.mum.cs.service.impl;

import edu.mum.cs.dao.UserDao;
import edu.mum.cs.dao.impl.UserDaoImpl;
import edu.mum.cs.model.Post;
import edu.mum.cs.model.User;
import edu.mum.cs.service.UserService;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public User findUserById(Long id) {
        return userDao.findUserById(id);
    }

    @Override
    public User getUserByEmail(String email) {
        return userDao.getUserByEmail(email);
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
    public List<User> findAllActivatedUser(User user) {
        List<User> res = new ArrayList<>();
        List<User> userList = userDao.findAllActivatedUser(user);

        for (User u: userList){

            if(!user.getFollowers().contains(u.getUserId()))
                res.add(u);
        }
        return res;
    }

    @Override
    public User authenticate(User user) {
        User verifiedUser = userDao.getActiveUserByEmail(user.getEmail());
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
