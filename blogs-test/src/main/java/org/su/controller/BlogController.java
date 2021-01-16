package org.su.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.su.pojo.Blogs;
import org.su.pojo.Comments;
import org.su.pojo.User;
import org.su.service.BlogService;
import org.su.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class BlogController {
    @Autowired
    @Qualifier("BlogServiceImpl")
    private BlogService  blogService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService  userService;

    @RequestMapping(value = "/home")
    public String index(HttpServletRequest req, HttpServletResponse resp , Model model) throws IOException {
        // System.out.println("////");
        List<Blogs> blogs_selection = blogService.queryBlogsAsSelectionList();
        List<Blogs> blogs_comment = blogService.queryBlogsAsListSortByCommentNums();
        List<Blogs> blogs_like = blogService.queryBlogsAsListSortByLikeNums();
        model.addAttribute("blogs_selection",blogs_selection);
        model.addAttribute("blogs_comment",blogs_comment);
        model.addAttribute("blogs_like",blogs_like);
        // System.out.println(blogs_selection.toString());
        // System.out.println(blogs_comment.toString());
        // System.out.println(blogs_like.toString());
        return "../../index";
    }

    @RequestMapping("/a/{blogId}")
    public String showArticle(@PathVariable int blogId,Model model){
        System.out.println(blogId);
        Blogs blogs = blogService.queryBlogsAsSingle(blogId);
        List<Comments> comments = blogService.queryCommentsAsList(blogId);
        User user = userService.getUserByUserName(blogs.getCreator());
        List<Blogs> blog_recent = blogService.queryBlogsAsListByCreatorSortByTime(user.getUsername());
        model.addAttribute("blog_recent",blog_recent);

        // System.out.println(comments.toString());
        // System.out.println(blogs.toString());
        // System.out.println(blogs);
        model.addAttribute("blog_content",blogs);
        model.addAttribute("blog_comment",comments);
        model.addAttribute("creator_info",user);
        return "article/readBlog";
    }

    @RequestMapping("/post/create")
    public String create(Model model){
        return "user/createBlog";
    }

    @RequestMapping("/post/edit/{blogId}")
    public String edit(Model model){

        System.out.println(model.getAttribute("123"));
        return "user/editBlog";
    }


    // @RequestMapping("/post/save")
    // public String save(HttpServletRequest request,HttpServletResponse response){
    //     String parameter = request.getParameter("inp-content");
    //     System.out.println(parameter);
    //     return "user/editBlog";
    // }

    @RequestMapping("/post/save")
    @ResponseBody
    public JSONObject save(@RequestParam("blog_content") String blog_content,@RequestParam("blog_title")
            String blog_title,HttpSession session) throws IOException {
        JSONObject jsonObject = new JSONObject();
        // System.out.println(blog_content);
        System.out.println("成功获取");
        blogService.addBlogs(new Blogs(blog_title,blog_content,0,0,(String) session.getAttribute("username"),0));

        // response.sendRedirect("../post/edit");
        return jsonObject;
    }


    @RequestMapping("/post/post")
    @ResponseBody
    public JSONObject post(@RequestParam("blog_content") String blog_content,@RequestParam("blog_title")
            String blog_title,HttpSession session) throws IOException {
        JSONObject jsonObject = new JSONObject();
        // System.out.println(blog_content);
        // System.out.println(blog_title);
        System.out.println("成功获取");
        blogService.addBlogs(new Blogs(blog_title,blog_content,0,0,(String) session.getAttribute("username"),1));
        // model.addAttribute("123",123);
        // response.sendRedirect("../post/edit");
        return jsonObject;
    }

    @RequestMapping("/c/{blogId}")
    @ResponseBody
    public JSONObject post(@RequestParam("text_comment") String text_comment,
                           @PathVariable int blogId,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();
        String username = (String) session.getAttribute("username");
        String nickName = (String) session.getAttribute("nickName");
        // System.out.println(blog_content);
        // System.out.println(blog_title);
        System.out.println(text_comment);
        System.out.println("成功获取评论");
        if(null==username){
            String Path = request.getContextPath();
            // response.sendRedirect(Path+"/login.jsp");
            System.out.println(Path+"/login.jsp");
            jsonObject.put("msg","notLogged");
        }else{
            blogService.addComment(new Comments(blogId,username,nickName,text_comment,1));
            List<Comments> comments = blogService.queryCommentsAsList(blogId);
            jsonObject.put("comments",comments);
            jsonObject.put("msg","ok");
        }

        // blogService.addBlogs(new Blogs(blog_title,blog_content,0,0,(String) session.getAttribute("username"),1));
        // model.addAttribute("123",123);
        // response.sendRedirect("../post/edit");
        return jsonObject;
    }






}
