package org.su.service.impl;

import org.su.mapper.AdminMapper;
import org.su.mapper.UserMapper;
import org.su.pojo.Admin;
import org.su.pojo.User;
import org.su.service.AdminService;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;
    private UserMapper userMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper=userMapper;
    }

    @Override
    public Admin getAdmin(String adminName, String adminPassword) {
        return adminMapper.getAdmin(adminName,adminPassword);
    }

    @Override
    public List<User> getAllUsers() {
        return userMapper.queryAll();
    }


}
