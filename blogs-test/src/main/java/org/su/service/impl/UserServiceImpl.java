package org.su.service.impl;

import org.su.mapper.BlogsMapper;
import org.su.mapper.FavouriteMapper;
import org.su.mapper.FollowersMapper;
import org.su.mapper.UserMapper;
import org.su.pojo.Followers;
import org.su.pojo.User;
import org.su.service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zucker
 */
public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    private FollowersMapper followersMapper;
    private BlogsMapper blogsMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public void setFollowersMapper(FollowersMapper followersMapper) {
        this.followersMapper=followersMapper;
    }

    public void setBlogsMapper(BlogsMapper blogsMapper) {
        this.blogsMapper=blogsMapper;
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public void removeUserByUserName(String userName) {
        blogsMapper.deleteBlogByCreator(userName);
        userMapper.removeUserByUserName(userName);
    }

    @Override
    public void updateUserByUserName(User user) {
        userMapper.updateUserByUserName(user);
    }

    @Override
    public User getUserByUserName(String userName) {
        return userMapper.getUserByUserName(userName);
    }

    @Override
    public User getUser(String username, String password) {
        return userMapper.getUser(username,password);
    }

    @Override
    public List<User> queryAll() {
        return userMapper.queryAll();
    }

    @Override
    public List<User> queryFollowingBloggers(String username) {
        List<String> followingBloggers = followersMapper.queryFollowingBloggers(username);
        List<User> userList= new ArrayList<User>();
        for(String i: followingBloggers){
            User user = userMapper.getUserByUserName(i);
            userList.add(user);
        }
        return userList;
    }

    @Override
    public List<User> queryFollowedBloggers(String username) {
        List<String> followingBloggers = followersMapper.queryFollowedBloggers(username);
        List<User> userList= new ArrayList<User>();
        for(String i: followingBloggers){
            User user = userMapper.getUserByUserName(i);
            userList.add(user);
        }
        return userList;
    }

    @Override
    public int addFollow(int blogId,String username) {
        String s = blogsMapper.queryCreator(blogId);
        int i = followersMapper.addFollowRecord(s, username);
        if(i!=0){
            userMapper.addFollowersNum(username);
            userMapper.addFansNum(s);
        }
        return i;
    }

}
