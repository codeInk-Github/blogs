package org.su.generator.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.su.generator.pojo.Blogs;
import org.su.generator.pojo.BlogsExample;

public interface BlogsMapper {
    int countByExample(BlogsExample example);

    int deleteByExample(BlogsExample example);

    int deleteByPrimaryKey(Integer blogId);

    int insert(Blogs record);

    int insertSelective(Blogs record);

    List<Blogs> selectByExample(BlogsExample example);

    Blogs selectByPrimaryKey(Integer blogId);

    int updateByExampleSelective(@Param("record") Blogs record, @Param("example") BlogsExample example);

    int updateByExample(@Param("record") Blogs record, @Param("example") BlogsExample example);

    int updateByPrimaryKeySelective(Blogs record);

    int updateByPrimaryKey(Blogs record);
}