package edu.mum.cs.dao;

import edu.mum.cs.model.Ads;
import edu.mum.cs.model.User;

import java.util.List;

public interface FollowerDao {
    void follow(User user, User following);
    void unfollow(User user, User following);
}