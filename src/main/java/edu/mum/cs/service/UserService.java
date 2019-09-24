package edu.mum.cs.service;

import edu.mum.cs.model.User;

import java.util.List;

public interface UserService {
    User findUserById(Long id);
    Long saveUser(User user);
    void updateUser(User user);
    void deleteUser(Long id);
    List<User> findAllUser();
    User authenticate(User user);
}
