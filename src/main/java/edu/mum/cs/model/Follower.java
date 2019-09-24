package edu.mum.cs.model;

import javax.persistence.ManyToMany;
import java.util.List;

public class Follower {
    private Long followerId;
    @ManyToMany(mappedBy = "followers")
    private List<User> users;
}
