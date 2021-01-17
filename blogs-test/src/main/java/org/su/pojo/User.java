package org.su.pojo;


public class User {

  private String username;
  private String password;
  private String headPortrait;
  private String nickName;
  private String email;
  private String telephone;
  private int favouriteNum;
  private int fansNum;
  private int followersNum;
  private String question;
  private String answer;
  private String registerTime;


  public User(String username, String password) {
    this.username = username;
    this.password = password;
  }

  public User(String username, String password, String headPortrait, String nickName, String email, String telephone, int favouriteNum, int fansNum, String question, String answer) {
    this.username = username;
    this.password = password;
    this.headPortrait = headPortrait;
    this.nickName = nickName;
    this.email = email;
    this.telephone = telephone;
    this.favouriteNum = favouriteNum;
    this.fansNum = fansNum;
    this.question = question;
    this.answer = answer;
  }

  public User(String username, String password, String headPortrait, String nickName, String email, String telephone, int favouriteNum, int fansNum, String question, String answer, String registerTime) {
    this.username = username;
    this.password = password;
    this.headPortrait = headPortrait;
    this.nickName = nickName;
    this.email = email;
    this.telephone = telephone;
    this.favouriteNum = favouriteNum;
    this.fansNum = fansNum;
    this.question = question;
    this.answer = answer;
    this.registerTime = registerTime;
  }

  public User(String username, String password, String headPortrait, String nickName, String email, String telephone, int favouriteNum, int fansNum, int followersNum, String question, String answer, String registerTime) {
    this.username = username;
    this.password = password;
    this.headPortrait = headPortrait;
    this.nickName = nickName;
    this.email = email;
    this.telephone = telephone;
    this.favouriteNum = favouriteNum;
    this.fansNum = fansNum;
    this.followersNum = followersNum;
    this.question = question;
    this.answer = answer;
    this.registerTime = registerTime;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getHeadPortrait() {
    return headPortrait;
  }

  public void setHeadPortrait(String headPortrait) {
    this.headPortrait = headPortrait;
  }


  public String getNickName() {
    return nickName;
  }

  public void setNickName(String nickName) {
    this.nickName = nickName;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getTelephone() {
    return telephone;
  }

  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }


  public int getFavouriteNum() {
    return favouriteNum;
  }

  public void setFavouriteNum(int favouriteNum) {
    this.favouriteNum = favouriteNum;
  }


  public int getFansNum() {
    return fansNum;
  }

  public void setFansNum(int fansNum) {
    this.fansNum = fansNum;
  }


  public String getQuestion() {
    return question;
  }

  public void setQuestion(String question) {
    this.question = question;
  }


  public String getAnswer() {
    return answer;
  }

  public void setAnswer(String answer) {
    this.answer = answer;
  }

  public String getRegisterTime() {
    return registerTime;
  }

  public void setRegisterTime(String registerTime) {
    this.registerTime = registerTime;
  }


  public int getFollowersNum() {
    return followersNum;
  }

  public void setFollowersNum(int followersNum) {
    this.followersNum = followersNum;
  }
}
