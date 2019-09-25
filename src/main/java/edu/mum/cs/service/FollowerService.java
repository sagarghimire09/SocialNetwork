package edu.mum.cs.service;

import edu.mum.cs.model.User;

public interface FollowerService {
    void follow(User user, User following);
    void unfollow(User user, User following);
}
