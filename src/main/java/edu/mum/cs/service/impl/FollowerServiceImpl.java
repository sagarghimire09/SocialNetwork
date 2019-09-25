package edu.mum.cs.service.impl;

import edu.mum.cs.dao.FollowerDao;
import edu.mum.cs.dao.impl.FollowerDaoImpl;
import edu.mum.cs.model.User;
import edu.mum.cs.service.FollowerService;

public class FollowerServiceImpl implements FollowerService {
    FollowerDao followerDao = new FollowerDaoImpl();
    @Override
    public void follow(User user, User following) {
        followerDao.follow(user, following);
    }

    @Override
    public void unfollow(User user, User following) {
        followerDao.unfollow(user, following);
    }
}
