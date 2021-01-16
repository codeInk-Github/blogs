package org.su.pojo;


import java.text.SimpleDateFormat;
import java.util.Date;

public class Comments {

  private String commentId;
  private int blogId;
  private String commenterId;
  private String commenterName;
  private String commentTime;
  private String commentContext;
  private int annoy;

  public Comments(int blogId, String commenterId, String commenterName, String commentContext, int annoy) {
    this.blogId = blogId;
    this.commenterId = commenterId;
    this.commenterName = commenterName;
    SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间
    sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
    this.commentTime = sdf.format(new Date());
    this.commentContext = commentContext;
    this.annoy=annoy;
  }

  public Comments(String commentId, int blogId, String commenterId, String commenterName, String commentTime, String commentContext, int annoy) {
    this.commentId = commentId;
    this.blogId = blogId;
    this.commenterId = commenterId;
    this.commenterName = commenterName;
    this.commentTime = commentTime;
    this.commentContext = commentContext;
    this.annoy = annoy;
  }

  @Override
  public String toString() {
    return "Comments{" +
            "commentId='" + commentId + '\'' +
            ", blogId=" + blogId +
            ", commenterId='" + commenterId + '\'' +
            ", commenterName='" + commenterName + '\'' +
            ", commentTime='" + commentTime + '\'' +
            ", commentContext='" + commentContext + '\'' +
            ", annoy=" + annoy +
            '}';
  }

  public String getCommentId() {
    return commentId;
  }

  public void setCommentId(String commentId) {
    this.commentId = commentId;
  }


  public int getBlogId() {
    return blogId;
  }

  public void setBlogId(int blogId) {
    this.blogId = blogId;
  }


  public String getCommenterId() {
    return commenterId;
  }

  public void setCommenterId(String commenterId) {
    this.commenterId = commenterId;
  }


  public String getCommenterName() {
    return commenterName;
  }

  public void setCommenterName(String commenterName) {
    this.commenterName = commenterName;
  }


  public String getCommentTime() {
    return commentTime;
  }

  public void setCommentTime(String commentTime) {
    this.commentTime = commentTime;
  }


  public String getCommentContext() {
    return commentContext;
  }

  public void setCommentContext(String commentContext) {
    this.commentContext = commentContext;
  }


  public int getAnnoy() {
    return annoy;
  }

  public void setAnnoy(int annoy) {
    this.annoy = annoy;
  }

}
