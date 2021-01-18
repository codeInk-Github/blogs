package org.su.service;

import org.su.pojo.Admin;
import org.su.pojo.User;

import java.util.List;

public interface AdminService {
    Admin getAdmin(String adminName, String adminPassword);

    List<User> getAllUsers();

}
