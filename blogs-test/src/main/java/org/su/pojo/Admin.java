package org.su.pojo;


public class Admin {

  private String adminname;
  private String adminpassword;
  private String nickname;
  private String realname;
  private String telephone;
  private String email;
  private String description;

  @Override
  public String toString() {
    return "Admin{" +
            "adminname='" + adminname + '\'' +
            ", adminpassword='" + adminpassword + '\'' +
            ", nickname='" + nickname + '\'' +
            ", realname='" + realname + '\'' +
            ", telephone='" + telephone + '\'' +
            ", email='" + email + '\'' +
            ", description='" + description + '\'' +
            '}';
  }

  public String getAdminname() {
    return adminname;
  }

  public void setAdminname(String adminname) {
    this.adminname = adminname;
  }


  public String getAdminpassword() {
    return adminpassword;
  }

  public void setAdminpassword(String adminpassword) {
    this.adminpassword = adminpassword;
  }


  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }


  public String getRealname() {
    return realname;
  }

  public void setRealname(String realname) {
    this.realname = realname;
  }


  public String getTelephone() {
    return telephone;
  }

  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

}
