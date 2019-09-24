package edu.mum.cs.dao;

import edu.mum.cs.model.User;

import java.util.List;

public interface UserDao {
    User findUserById(Long id);
    User getUserByEmail(String email);
    Long saveUser(User user);
    void updateUser(User user);
    void deleteUser(Long id);
    List<User> findAllPost();
}
