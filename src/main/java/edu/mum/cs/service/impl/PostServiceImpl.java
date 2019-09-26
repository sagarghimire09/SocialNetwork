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
        return postDao.findPostById(id);
    }

    @Override
    public void deletePost(Long id) { }

    @Override

    public List<Post> findAllPost() { return postDao.findAllPost(); }

    @Override
    public void updatePost(Post post) {
        postDao.updatePost(post);
    }

    @Override
    public Long savePost(Post post)
    {
        return postDao.savePost(post);
    }

    @Override
    public List<Post> getAjaxPost(Long id, int row) { return postDao.getAjaxPost(id, row); }
}
