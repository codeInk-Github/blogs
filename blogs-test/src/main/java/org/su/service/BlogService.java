package org.su.service;

import org.su.pojo.Blogs;
import org.su.pojo.CommentedBlogs;
import org.su.pojo.Comments;

import java.util.List;
import java.util.Map;

public interface BlogService {
    // 针对博客内容
    int addBlogs(Blogs blog);

    int deleteBlogs(int blogId);

    Blogs queryBlogsAsSingle(int blogId);

    List<Blogs> queryBlogsAsListByCreator(String creator);

    List<Blogs> queryBlogsAsListSortByLikeNums();

    List<Blogs> queryBlogsAsListSortByCommentNums();

    List<Blogs> queryBlogsAsSelectionList();

    // 针对博客评论
    int addComment(Comments comment);

    int deleteComments(int comment_id);

    List<Comments> queryCommentsAsList(int blogId);

    List<CommentedBlogs> queryCommentsAsListByCommenterId(String username);

    List<Blogs> queryBlogsAsListByCreatorSortByTime(String creator);

    List<Blogs> queryMyFavouriteBlogs(String username);

    List<Blogs> queryDraftBlogsAsListByCreator(String username);

    List<Blogs> queryBlogsAsListSearched(String search);

    int addFavourite(int blogId, String username);

    int updateBlogs(Blogs blog);
}
