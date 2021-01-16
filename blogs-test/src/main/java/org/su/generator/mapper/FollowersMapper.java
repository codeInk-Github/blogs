package org.su.generator.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.su.generator.pojo.FollowersExample;
import org.su.generator.pojo.FollowersKey;

public interface FollowersMapper {
    int countByExample(FollowersExample example);

    int deleteByExample(FollowersExample example);

    int deleteByPrimaryKey(FollowersKey key);

    int insert(FollowersKey record);

    int insertSelective(FollowersKey record);

    List<FollowersKey> selectByExample(FollowersExample example);

    int updateByExampleSelective(@Param("record") FollowersKey record, @Param("example") FollowersExample example);

    int updateByExample(@Param("record") FollowersKey record, @Param("example") FollowersExample example);
}