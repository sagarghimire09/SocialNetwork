package edu.mum.cs.service;

import edu.mum.cs.model.Post;

import java.util.List;

public interface PostService {
    Post findPostById(Long id);
    Long savePost(Post post);
    void updatePost(Post post);
    void deletePost(Long id);
    List<Post> findAllPost();
}
