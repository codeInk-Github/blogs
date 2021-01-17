package org.su.pojo;

public class CommentedBlogs {
    private int blogId;
    private String blogTitle;
    private String createTime;
    private String commentContext;

    public CommentedBlogs() {
    }

    public CommentedBlogs(int blogId, String blogTitle, String createTime, String commentContext) {
        this.blogId = blogId;
        this.blogTitle = blogTitle;
        this.createTime = createTime;
        this.commentContext = commentContext;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext;
    }
}
