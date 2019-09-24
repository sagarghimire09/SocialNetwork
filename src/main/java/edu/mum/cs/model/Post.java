package edu.mum.cs.model;

import org.hibernate.annotations.CreationTimestamp;
import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long postId;
    private String postBody;
    private String imagePath;
    @CreationTimestamp
    private LocalDate createdAt;

//    private User user;

    public Long getId() {
        return postId;
    }

    public void setId(Long id) {
        this.postId = id;
    }

    public String getBody() {
        return postBody;
    }

    public void setBody(String postBody) {
        this.postBody = postBody;
    }

    public String getImage() {
        return imagePath;
    }

    public void setImage(String imagePath) {
        this.imagePath = imagePath;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }
}
