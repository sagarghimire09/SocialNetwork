package edu.mum.cs.service;

import edu.mum.cs.model.User;

public interface FollowerService {
    void follow(User following);
    void unfollow(User following);
}
