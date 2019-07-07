package SearchJob.controller;

import SearchJob.pojo.Admin;
import SearchJob.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/Adminlogin")
    public ModelAndView login(String adminName, String adminPwd, ModelAndView mv, HttpSession session){
        Admin admin=adminService.login(adminName,adminPwd);
        if(admin!=null){
            session.setAttribute("admin",admin);
            mv.setViewName("redirect:background/index.jsp");
        }else{
            mv.addObject("message","登录失败,账号或密码输入错误,请重新输入");
            //登录或密码错误
            mv.setViewName("jsp/error");
        }
        return  mv;
    }
}
