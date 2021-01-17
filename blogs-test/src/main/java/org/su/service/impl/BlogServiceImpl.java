package org.su.service.impl;

import org.su.mapper.BlogsMapper;
import org.su.mapper.CommentsMapper;
import org.su.mapper.FavouriteMapper;
import org.su.pojo.Blogs;
import org.su.pojo.CommentedBlogs;
import org.su.pojo.Comments;
import org.su.service.BlogService;
import org.su.utils.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class BlogServiceImpl implements BlogService {
    private BlogsMapper blogsMapper;
    private CommentsMapper commentsMapper;
    private FavouriteMapper favouriteMapper;

    public void setFavouriteMapper(FavouriteMapper favouriteMapper) {
        this.favouriteMapper=favouriteMapper;
    }

    public void setBlogsMapper(BlogsMapper blogsMapper) {
        this.blogsMapper = blogsMapper;
    }

    public void setCommentsMapper(CommentsMapper commentsMapper) {
        this.commentsMapper = commentsMapper;
    }

    @Override
    public int addBlogs(Blogs blog) {
        return blogsMapper.addBlog(blog);
    }

    @Override
    public int deleteBlogs(int blogId) {
        return 0;
    }

    @Override
    public Blogs queryBlogsAsSingle(int blogId) {
        return blogsMapper.queryBlogsAsSingle(blogId);
    }

    @Override
    public List<Blogs> queryBlogsAsListByCreator(String creator) {
        return blogsMapper.queryBlogsAsListByCreator(creator);
    }

    @Override
    public List<Blogs> queryBlogsAsListSortByLikeNums() {
        return blogsMapper.queryBlogsAsListSortByLikeNums();
    }

    @Override
    public List<Blogs> queryBlogsAsListSortByCommentNums() {
        return blogsMapper.queryBlogsAsListSortByCommentNums();
    }

    @Override
    public List<Blogs> queryBlogsAsSelectionList() {
        List<Blogs> blogs = blogsMapper.queryBlogsAsSelectionList();
        for (Blogs b : blogs){
            String blogContext = b.getBlogContext();
            b.setBlogContext(StringUtils.getChinese(blogContext));
        }
        return blogs;
    }


    @Override
    public int addComment(Comments comment) {
        return commentsMapper.insert(comment);
    }

    @Override
    public int deleteComments(int comment_id) {
        return commentsMapper.deleteByCommentId(comment_id);
    }

    @Override
    public List<Comments> queryCommentsAsList(int blogId) {
        return commentsMapper.queryCommentsAsList(blogId);
    }

    @Override
    public List<CommentedBlogs> queryCommentsAsListByCommenterId(String username) {
        ArrayList<CommentedBlogs> commentedBlogs = new ArrayList<>();
        List<Comments> commentsList = commentsMapper.queryCommentsAsListBycommenterId(username);
        for(Comments comment: commentsList){
            commentedBlogs.add(new CommentedBlogs(comment.getBlogId(),blogsMapper.queryBlogTitle(comment.getBlogId()),comment.getCommentTime(),comment.getCommentContext()));
        }
        return commentedBlogs;
    }

    @Override
    public List<Blogs> queryBlogsAsListByCreatorSortByTime(String creator) {
        return blogsMapper.queryBlogsAsListByCreatorSortByTime(creator);
    }

    @Override
    public List<Blogs> queryMyFavouriteBlogs(String username) {
        List<Integer> blogsId = favouriteMapper.getBlogsId(username);
        List<Blogs> blogsList = new ArrayList<Blogs>();

        for (Integer i:blogsId){
            blogsList.add(blogsMapper.queryBlogsAsSingle(i));
        }
        return blogsList;
    }

    @Override
    public List<Blogs> queryDraftBlogsAsListByCreator(String username) {
        List<Blogs> blogs = blogsMapper.queryBlogsAsListByCreator(username);
        List<Blogs> blog_list = new ArrayList<Blogs>();
        for(Blogs blog: blogs){
            if(blog.getStatus()==0)
                blog_list.add(blog);
        }
        return blog_list;
    }

    @Override
    public List<Blogs> queryBlogsAsListSearched(String search) {
        return blogsMapper.queryBlogsAsListSearched(search);
    }


}
