package org.su.service;

import org.su.pojo.User;

import java.util.List;

/**
 * @author zucker
 */
public interface UserService{
    /**
     * @param user
     * @Description 添加用户
     */
    public void addUser(User user);

    /**
     * @param username
     */
    void removeUserByUserName(String username);

    /**
     * @param user
     */
    void updateUserByUserName(User user);

    /**
     * @param username
     * @return
     */
    User getUserByUserName(String username);

    /**
     * @param username
     * @param password
     * @return
     */
    User getUser(String username, String password);

    /**
     * @return
     */
    public List<User> queryAll();

    List<User> queryFollowingBloggers(String username);

    List<User> queryFollowedBloggers(String username);

    int addFollow(int blogId,String username);

}
