package org.su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.su.pojo.Blogs;
import org.su.pojo.CommentedBlogs;
import org.su.pojo.Comments;
import org.su.pojo.User;
import org.su.service.BlogService;
import org.su.service.UserService;
import org.su.utils.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("BlogServiceImpl")
    private BlogService blogService;


    @RequestMapping("/user/login")
    public void login(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws IOException, ServletException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println(username+","+password);
        User user = userService.getUser(username, password);

        if(user != null){
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            session.setAttribute("nickName",user.getNickName());
            session.setAttribute("user",user);
            System.out.println("Login  success!");
            // req.getRequestDispatcher("/user/menu").forward(req,resp);
            resp.sendRedirect(username);
        }
        else{
            resp.sendRedirect("../login.jsp");
        }

    }


    @RequestMapping("/user/menu")
    public String menu(HttpSession session,Model model) throws IOException {
        String username =(String) session.getAttribute("username");
        String password =(String) session.getAttribute("password");
        User user = userService.getUserByUserName(username);
        model.addAttribute("blogger",user);
        // List<Blogs> blogs = blogService.queryBlogsAsListByCreatorSortByTime(username);
        List<Blogs> blogs = blogService.queryBlogsAsListByCreator(username);
        for (Blogs b : blogs){
            if(b.getBlogContext().length()>30){
                String blogContext = b.getBlogContext().substring(0,30);
                b.setBlogContext(StringUtils.getChinese(blogContext));
            }
        }
        model.addAttribute("blogs_list",blogs);
        return "/user/Menu";
    }

    @RequestMapping("/user/{creator}")
    public String menu(HttpSession session, Model model, @PathVariable String creator) throws IOException {
        List<Blogs> blog_recent = blogService.queryBlogsAsListByCreatorSortByTime(creator);
        model.addAttribute("blog_recent",blog_recent);
        User user = userService.getUserByUserName(creator);
        model.addAttribute("blogger",user);
        // List<Blogs> blogs = blogService.queryBlogsAsListByCreatorSortByTime(username);
        List<Blogs> blogs = blogService.queryBlogsAsListByCreator(creator);
        for (Blogs b : blogs){
            if(b.getBlogContext().length()>30){
                String blogContext = b.getBlogContext().substring(0,30);
                b.setBlogContext(StringUtils.getChinese(blogContext));
            }
        }
        model.addAttribute("blogs_list",blogs);
        return "/user/Menu";
    }

    @RequestMapping("/user/register")
    public void register(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String question = req.getParameter("question");
        String answer = req.getParameter("answer");
        User user = new User(username,password);
        user.setAnswer(answer);
        user.setQuestion(question);
        System.out.println(user.toString());
        userService.addUser(user);
        resp.sendRedirect("../login.jsp");
    }

    @RequestMapping("/logout")
    public String loggout(HttpSession session, HttpServletRequest request) throws IOException {
       session.invalidate();
        String path = request.getContextPath();
        System.out.println(path);
        return "./../index.jsp";
    }


    @RequestMapping("/user/Info")
    public String userInfo(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        User user = userService.getUserByUserName(username);
        model.addAttribute("user",user);
        return "user/userInfo";
    }


    @RequestMapping("/user/editInfo")
    public String editInfo(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        User user = userService.getUserByUserName(username);
        model.addAttribute("user",user);
        return "user/modifyInfo";
    }

    @RequestMapping("/user/myComments")
    public String myComments(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        List<CommentedBlogs> commented_list = blogService.queryCommentsAsListByCommenterId(username);
        model.addAttribute("commented_list",commented_list);
        return "user/myComments";
    }
    @RequestMapping("/user/myFavourite")
    public String myFavourite(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        List<Blogs> blogs = blogService.queryMyFavouriteBlogs(username);
        model.addAttribute("favourite_blogs",blogs);
        return "user/myFavourite";
    }

    @RequestMapping("/user/following")
    public String following(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        List<User> userList = userService.queryFollowingBloggers(username);
        model.addAttribute("following_list",userList);
        return "user/myFollowing";
    }

    @RequestMapping("/user/followed")
    public String followed(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        List<User> userList = userService.queryFollowedBloggers(username);
        model.addAttribute("followed_list",userList);
        return "user/followingMe";
    }



}
