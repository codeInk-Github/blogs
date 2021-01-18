package org.su.pojo;


import java.text.SimpleDateFormat;
import java.util.Date;

public class Blogs {

  private int blogId;
  private String blogTitle;
  private String blogContext;
  private int likeNums;
  private int commentNums;
  private String creator;
  private String createTime;
  private int status;

  public Blogs() {
  }

  public Blogs(String blogTitle, String blogContext, int likeNums, int commentNums, String creator, int status) {
    this.blogTitle = blogTitle;
    this.blogContext = blogContext;
    this.likeNums = likeNums;
    this.commentNums = commentNums;
    this.creator = creator;
    SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间
    sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
    this.createTime = sdf.format(new Date());
    this.status = status;
  }

  public Blogs(int blogId, String blogTitle, String blogContext, int likeNums, int commentNums, String creator, String createTime, int status) {
    this.blogId = blogId;
    this.blogTitle = blogTitle;
    this.blogContext = blogContext;
    this.likeNums = likeNums;
    this.commentNums = commentNums;
    this.creator = creator;
    this.createTime = createTime;
    this.status = status;
  }

  public Blogs(int blogId, String blogTitle, String blogContext, String creator, int status) {
    this.blogId = blogId;
    this.blogTitle = blogTitle;
    this.blogContext = blogContext;
    this.creator = creator;
    this.status = status;
  }


  @Override
  public String toString() {
    return "Blogs{" +
            "blogId=" + blogId +
            ", blogTitle='" + blogTitle + '\'' +
            ", blogContext='" + blogContext + '\'' +
            ", likeNums=" + likeNums +
            ", commentNums=" + commentNums +
            ", creator='" + creator + '\'' +
            ", createTime='" + createTime + '\'' +
            ", status=" + status +
            '}';
  }

  public long getBlogId() {
    return blogId;
  }

  public void setBlogId(int blogId) {
    this.blogId = blogId;
  }

  public int getCommentNums() {
    return commentNums;
  }

  public void setCommentNums(int commentNums) {
    this.commentNums = commentNums;
  }


  public String getBlogTitle() {
    return blogTitle;
  }

  public void setBlogTitle(String blogTitle) {
    this.blogTitle = blogTitle;
  }


  public String getBlogContext() {
    return blogContext;
  }

  public void setBlogContext(String blogContext) {
    this.blogContext = blogContext;
  }


  public int getLikeNums() {
    return likeNums;
  }

  public void setLikeNums(int likeNums) {
    this.likeNums = likeNums;
  }


  public String getCreator() {
    return creator;
  }

  public void setCreator(String creator) {
    this.creator = creator;
  }


  public String getCreateTime() {
    return createTime;
  }

  public void setCreateTime(String createTime) {
    this.createTime = createTime;
  }


  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

}
