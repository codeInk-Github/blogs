package org.su.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.su.pojo.Admin;
import org.su.pojo.Blogs;
import org.su.pojo.User;
import org.su.service.AdminService;
import org.su.service.BlogService;
import org.su.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("BlogServiceImpl")
    private BlogService  blogService;


    @RequestMapping("/admin/login")
    public void login(Model model, HttpSession session, String adminName, String adminPassword, HttpServletResponse resp, HttpServletRequest req) throws IOException {
        // String adminName = req.getParameter("adminName");
        // String adminPassword = req.getParameter("adminPassword");
        System.out.println(adminName+","+adminPassword);
        Admin admin = adminService.getAdmin(adminName, adminPassword);
        if(admin != null){
            System.out.println(admin.toString());
            session.setAttribute("adminName",adminName);
            session.setAttribute("adminPassword",adminPassword);
            List<Blogs> blogs_selection = blogService.queryBlogsAsSelectionList();
            List<Blogs> blogs_comment = blogService.queryBlogsAsListSortByCommentNums();
            List<Blogs> blogs_like = blogService.queryBlogsAsListSortByLikeNums();
            model.addAttribute("blogs_selection",blogs_selection);
            model.addAttribute("blogs_comment",blogs_comment);
            model.addAttribute("blogs_like",blogs_like);
            resp.sendRedirect("menu");
            // resp.sendRedirect("");
            // return "admin/Menu";
        } else {
            System.out.println("fail!");
            resp.sendRedirect("../adminLogin.jsp");
            // return null;
        }
    }

    @RequestMapping("/admin/menu")
    public String Menu(Model model){
        List<Blogs> blogs_selection = blogService.queryBlogsAsSelectionList();
        List<Blogs> blogs_comment = blogService.queryBlogsAsListSortByCommentNums();
        List<Blogs> blogs_like = blogService.queryBlogsAsListSortByLikeNums();
        model.addAttribute("blogs_selection",blogs_selection);
        model.addAttribute("blogs_comment",blogs_comment);
        model.addAttribute("blogs_like",blogs_like);
        return "admin/Menu";
    }

    @RequestMapping("/admin/manageUsers")
    public String manageUsers(Model model){
        List<User> allUsers = adminService.getAllUsers();
        model.addAttribute("user_list",allUsers);
        return "admin/manageUser";
    }

    @RequestMapping("/admin/{username}/modifyInfo")
    public String modifyInfo(HttpSession session, Model model, @PathVariable String username){
        // String adminName = (String) session.getAttribute("adminName");
        // String adminPassword = (String) session.getAttribute("adminPassword");
        // Admin admin = adminService.getAdmin(adminName, adminPassword);
        // model.addAttribute("admin",admin);
        User user = userService.getUserByUserName(username);
        model.addAttribute("user",user);
        return "admin/modifyInfo";
    }

    @RequestMapping("/admin/{username}/delete")
    public String deleteInfo(HttpSession session, Model model, @PathVariable String username){
        // String adminName = (String) session.getAttribute("adminName");
        // String adminPassword = (String) session.getAttribute("adminPassword");
        // Admin admin = adminService.getAdmin(adminName, adminPassword);
        // model.addAttribute("admin",admin);
        userService.removeUserByUserName(username);
        List<User> allUsers = adminService.getAllUsers();
        model.addAttribute("user_list",allUsers);
        return "admin/manageUser";
    }

    @RequestMapping("/admin/manageBlogs")
    public String manageBlogs(Model model){
        List<Blogs> blogs = blogService.queryBlogsAsListSortByTime();
        model.addAttribute("blog_list",blogs);
        return "admin/manageBlogs";
    }

    @RequestMapping("/admin/update/{username}/{password}/{nickName}/{email}/{telephone}/{question}/{answer}")
    @ResponseBody
    public JSONObject updateUser(@PathVariable String username,@PathVariable String password,@PathVariable String nickName,
                             @PathVariable String email,@PathVariable String telephone,@PathVariable String question,
                             @PathVariable String answer, Model model){
        User user = userService.getUserByUserName(username);
        System.out.println(username+","+password+","+nickName+","+email+","+telephone+",");
        if(!"".equals(password)){
            user.setPassword(password);
        }
        if(!"".equals(nickName)){
            user.setNickName(nickName);
        }
        if(!"".equals(email)){
            user.setEmail(email);
        }
        if(!"".equals(telephone)){
            user.setTelephone(telephone);
        }
        if(!"".equals(question)){
            user.setQuestion(question);
        }
        if(!"".equals(answer)){
            user.setAnswer(answer);
        }
        System.out.println("ok!");
        userService.updateUserByUserName(user);
        model.addAttribute("user",user);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("msg","ok");
        return jsonObject;
    }


}
