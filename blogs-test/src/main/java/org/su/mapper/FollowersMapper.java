package org.su.mapper;


import java.util.List;

public interface FollowersMapper {


    List<String> queryFollowingBloggers(String username);

    List<String> queryFollowedBloggers(String username);



}