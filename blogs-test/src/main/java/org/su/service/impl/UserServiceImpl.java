package org.su.service.impl;

import org.su.mapper.FavouriteMapper;
import org.su.mapper.FollowersMapper;
import org.su.mapper.UserMapper;
import org.su.pojo.Followers;
import org.su.pojo.User;
import org.su.service.UserService;

import java.util.List;

/**
 * @author zucker
 */
public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    private FollowersMapper followersMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public void setFollowersMapper(FollowersMapper followersMapper) {
        this.followersMapper=followersMapper;
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public void removeUserByUserName(String userName) {
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



}
