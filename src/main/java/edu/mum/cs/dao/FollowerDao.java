package edu.mum.cs.dao;

import edu.mum.cs.model.User;

public interface FollowerDao {
    void follow(User user, User following);
    void unfollow(User user, User following);
}