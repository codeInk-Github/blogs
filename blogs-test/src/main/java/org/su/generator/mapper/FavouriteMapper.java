package org.su.generator.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.su.generator.pojo.Favourite;
import org.su.generator.pojo.FavouriteExample;

public interface FavouriteMapper {
    int countByExample(FavouriteExample example);

    int deleteByExample(FavouriteExample example);

    int insert(Favourite record);

    int insertSelective(Favourite record);

    List<Favourite> selectByExample(FavouriteExample example);

    int updateByExampleSelective(@Param("record") Favourite record, @Param("example") FavouriteExample example);

    int updateByExample(@Param("record") Favourite record, @Param("example") FavouriteExample example);
}