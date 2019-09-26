package edu.mum.cs.service;

import edu.mum.cs.model.Post;
import edu.mum.cs.model.User;

import java.util.List;

public interface UserService {
    User findUserById(Long id);
    User getUserByEmail(String email);
    Long saveUser(User user);
    void updateUser(User user);
    void deleteUser(Long id);
    List<User> findAllUser();
    List<User> findAllActivatedUser(User user);
    User authenticate(User user);
    List<Post> findUserRelatedPosts(User user);
}
