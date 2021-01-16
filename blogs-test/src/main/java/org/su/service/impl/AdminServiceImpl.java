package org.su.service.impl;

import org.su.mapper.AdminMapper;
import org.su.mapper.UserMapper;
import org.su.pojo.Admin;
import org.su.pojo.User;
import org.su.service.AdminService;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }


    @Override
    public Admin getAdmin(String adminName, String adminPassword) {
        return null;
    }

    @Override
    public List<User> getAllUsers() {
        return null;
    }

}
