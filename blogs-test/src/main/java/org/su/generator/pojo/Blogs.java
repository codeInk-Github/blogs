package org.su.generator.pojo;

import java.util.Date;

public class Blogs {
    private Integer blogId;

    private String blogTitle;

    private String blogContext;

    private Integer likeNums;

    private Integer creator;

    private Date createTime;

    private Integer status;

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle == null ? null : blogTitle.trim();
    }

    public String getBlogContext() {
        return blogContext;
    }

    public void setBlogContext(String blogContext) {
        this.blogContext = blogContext == null ? null : blogContext.trim();
    }

    public Integer getLikeNums() {
        return likeNums;
    }

    public void setLikeNums(Integer likeNums) {
        this.likeNums = likeNums;
    }

    public Integer getCreator() {
        return creator;
    }

    public void setCreator(Integer creator) {
        this.creator = creator;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}