package org.su.mapper;

import org.apache.ibatis.annotations.Param;
import org.su.pojo.Favourite;

import java.util.List;

public interface FavouriteMapper {

    int insert(Favourite record);
    int countNumsByBlogId(@Param("blogId") String blogId);

}