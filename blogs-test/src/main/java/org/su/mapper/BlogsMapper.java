package org.su.mapper;


import org.apache.ibatis.annotations.Param;
import org.su.pojo.Blogs;

import java.util.List;

public interface BlogsMapper {
    int addBlog(Blogs blogs);

    int updateBlog(Blogs blogs);

    int deleteBlogByBlogId(int blogId);

    List<Blogs> queryBlogsAsListByCreator(String creator);

    List<Blogs> queryBlogsAsListSortByLikeNums();

    List<Blogs> queryBlogsAsListSortByCommentNums();

    List<Blogs> queryBlogsAsSelectionList();

    Blogs queryBlogsAsSingle(int blogId);

    List<Blogs> queryBlogsAsListByCreatorSortByTime(String creator);

    String queryBlogTitle(int blogId);

    String queryCreator(int blogId);

    List<Blogs> queryBlogsAsListSearched(String search);

    int reduceCommentNum(int blogId);

    int addCommentNum(int blogId);

    int reduceLikeNum(int blogId);

    int addLikeNum(int blogId);

    List<Blogs> queryBlogsAsListSortByTime();

    void deleteBlogByCreator(String userName);
}