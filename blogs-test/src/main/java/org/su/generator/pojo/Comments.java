package org.su.generator.pojo;

import java.util.Date;

public class Comments {
    private String commentId;

    private Integer blogId;

    private String commenterId;

    private String commerterName;

    private Date commentTime;

    private String commentContext;

    private Integer anno;

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId == null ? null : commentId.trim();
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public String getCommenterId() {
        return commenterId;
    }

    public void setCommenterId(String commenterId) {
        this.commenterId = commenterId == null ? null : commenterId.trim();
    }

    public String getCommerterName() {
        return commerterName;
    }

    public void setCommerterName(String commerterName) {
        this.commerterName = commerterName == null ? null : commerterName.trim();
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext == null ? null : commentContext.trim();
    }

    public Integer getAnno() {
        return anno;
    }

    public void setAnno(Integer anno) {
        this.anno = anno;
    }
}