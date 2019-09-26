package edu.mum.cs.dao;

import edu.mum.cs.model.User;

public interface FollowerDao {
    void follow(User following);
    void unfollow(User following);
}