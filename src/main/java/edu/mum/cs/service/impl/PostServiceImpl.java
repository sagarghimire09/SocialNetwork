package edu.mum.cs.service.impl;

import edu.mum.cs.dao.PostDao;
import edu.mum.cs.dao.impl.PostDaoImpl;
import edu.mum.cs.model.Post;
import edu.mum.cs.service.PostService;

import java.util.List;

public class PostServiceImpl implements PostService {

    PostDao postDao = new PostDaoImpl();

    @Override
    public Post findPostById(Long id) {
        return null;
    }

    @Override
    public Long savePost(Post post) {
        return postDao.savePost(post);
    }

    @Override
    public void updatePost(Post post) {

    }

    @Override
    public void deletePost(Long id) {

    }

    @Override
    public List<Post> findAllPost() {
        return null;
    }
}
