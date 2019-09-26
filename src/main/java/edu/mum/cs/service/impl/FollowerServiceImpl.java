package edu.mum.cs.service.impl;

import edu.mum.cs.dao.FollowerDao;
import edu.mum.cs.dao.impl.FollowerDaoImpl;
import edu.mum.cs.model.User;
import edu.mum.cs.service.FollowerService;

public class FollowerServiceImpl implements FollowerService {
    FollowerDao followerDao = new FollowerDaoImpl();
    @Override
    public void follow(User following) {
        followerDao.follow(following);
    }

    @Override
    public void unfollow(User following) {
        followerDao.unfollow(following);
    }
}
