package org.su.mapper;

import org.su.pojo.Comments;

import java.util.List;

public interface CommentsMapper {

    int deleteByCommentId(int commentId);

    int insert(Comments comments);

    List<Comments> queryCommentsAsList(int blogId);
}