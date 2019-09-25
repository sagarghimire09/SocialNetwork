package edu.mum.cs.dao;

import edu.mum.cs.model.Post;
import java.util.List;

public interface PostDao {
    Post findPostById(Long id);
    Long savePost(Post post);
    void updatePost(Post post);
    void deletePost(Long id);
    List<Post> findAllPost();
}
