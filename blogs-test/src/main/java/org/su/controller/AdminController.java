package org.su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.su.pojo.Blogs;
import org.su.service.AdminService;
import org.su.service.BlogService;
import org.su.service.UserService;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    @Autowired
    @Qualifier("BlogServiceImpl")
    private BlogService  blogService;


    @RequestMapping("/admin/login")
    public String login(Model model){

        List<Blogs> blogs_selection = blogService.queryBlogsAsSelectionList();
        List<Blogs> blogs_comment = blogService.queryBlogsAsListSortByCommentNums();
        List<Blogs> blogs_like = blogService.queryBlogsAsListSortByLikeNums();
        model.addAttribute("blogs_selection",blogs_selection);
        model.addAttribute("blogs_comment",blogs_comment);
        model.addAttribute("blogs_like",blogs_like);
        return "admin/Menu";
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
    public String manageUsers(){
        return "admin/manageUser";
    }

    @RequestMapping("/admin/modifyInfo")
    public String modifyInfo(){
        return "admin/modifyInfo";
    }

    @RequestMapping("/admin/manageBlogs")
    public String manageBlogs(){
        return "admin/manageBlogs";
    }


}
