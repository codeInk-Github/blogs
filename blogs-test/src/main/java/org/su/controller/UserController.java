package org.su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.su.pojo.Blogs;
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

    @RequestMapping("/user/update")
    public void updateUserInfo(HttpServletRequest request,HttpServletResponse response) throws IOException {
        System.out.println("修改用户信息");
        User user = (User) request.getSession().getAttribute("user");
        user.setNickName((String) request.getParameter("nickname"));
        user.setTelephone((String) request.getParameter("telePhone"));
        user.setEmail((String) request.getParameter("email"));
        userService.updateUserByUserName(user);
        User userTemp = userService.getUser(user.getUsername(),user.getPassword());
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user",userTemp);
        response.sendRedirect("../user/info");
    }

}
