package org.su.mapper;


import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FollowersMapper {


    List<String> queryFollowingBloggers(String username);

    List<String> queryFollowedBloggers(String username);

    int addFollowRecord(@Param("bloggerId") String bloggerId,@Param("fansId") String fansId);

}