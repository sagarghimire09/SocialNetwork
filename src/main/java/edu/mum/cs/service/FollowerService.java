package edu.mum.cs.service;

import edu.mum.cs.model.Ads;
import edu.mum.cs.model.User;

import java.util.List;

public interface FollowerService {
    void follow(User following);
    void unfollow(User following);
}
