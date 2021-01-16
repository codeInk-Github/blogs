package org.su.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    //在请求处理的方法之前执行
    //如果返回true执行下一个拦截器
    //如果返回false就不执行下一个拦截器

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handle) throws Exception {
        // System.out.println("URI:"+request.getRequestURI());
        if(request.getRequestURI().contains("login")){
            // System.out.println("请求登录页面");
            return true;
        }
        if(request.getRequestURI().contains("register")){
            // System.out.println("请求登录页面");
            return true;
        }
        if(request.getSession().getAttribute("username")!=null || request.getSession().getAttribute("adminName")!=null){
            // System.out.println("已经登录");
            return true;
        }
        // request.getRequestDispatcher("/login.jsp").forward(request,response);
        response.sendRedirect("../login.jsp");
        // System.out.println("请求不合法");
        return false;
    }

    //在请求处理方法执行之后执行
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
    }

    //在dispatcherServlet处理后执行,做清理工作.
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

}
