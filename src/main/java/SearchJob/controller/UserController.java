package SearchJob.controller;

import SearchJob.pojo.Employee;
import SearchJob.pojo.Message;
import SearchJob.pojo.User;
import SearchJob.service.EmployeeService;
import SearchJob.service.MessageService;
import SearchJob.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.util.List;

@Controller

public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private MessageService messageService;

    @RequestMapping("getAllUser")
    public String  getAllUser(HttpSession session){
        List<User> users=userService.getAllUser();

        session.setAttribute("users",users);

        return "redirect:background/member-list.jsp";
    }
    @RequestMapping(value = "/login",method= RequestMethod.POST)
    public ModelAndView login(String userAccount, String userPwd, ModelAndView mv, HttpSession session) {
        User user=userService.login(userAccount,userPwd);
        if(user!=null){

            if(user.getUserPower()==1) {
                session.setAttribute("user",user);
                List<Employee> employees=employeeService.getAllEmployee();
                session.setAttribute("employees",employees);
                mv.setViewName("/jsp/index_user");
            }else {
                mv.addObject("message","对不起，您的账号未激活或受限");
                mv.setViewName("jsp/error");
            }
        }else{
            mv.addObject("message","登录失败,账号或密码输入错误,请重新输入");
            //登录或密码错误
            mv.setViewName("jsp/error");
        }
        return  mv;
    }

    /**
     * 注册
     * @param user
     * @return
     */
    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insert( @Valid User user){
        Integer id=user.getUserId();
        //判断ID是否为空
        if(userService.findById(id)==null){
            userService.InsertUser(user);
            return  "jsp/index";
        }else {
            return "redirect:/index";
        }
    }

    /**
     * 注册跳转
     * @return
     */
    @RequestMapping("/register")
    public String register(@ModelAttribute("user") User user){
        return "jsp/zc";
    }

    /**
     * 更新密码
     * @param user
     * @param mv
     * @param userName
     * @param userPwd
     * @param NewPwd
     * @param NewPwdAgain
     * @return
     */
    @RequestMapping(value = "/updateUserPwd")
    public ModelAndView updateUserPwd( @RequestParam("userId")Integer userId, User user, ModelAndView mv,
                                      String userName,String userPwd,String NewPwd,String NewPwdAgain){
        user=userService.findById(userId);
            if(user.getUserName().equals(userName) && user.getUserPwd().equals(userPwd)){
                if(NewPwd.equals(NewPwdAgain)){
                    user.setUserPwd(NewPwd);
                    userService.UpdateUserPwd(user);
                    mv.setViewName("jsp/index");
                }else{
                    mv.addObject("message","两次密码不一致");
                    mv.setViewName("jsp/zc_xg");
                }
            }else{
                mv.addObject("message","账号或密码输入错误,请重新输入");
                mv.setViewName("jsp/zc_xg");
            }
        return mv;
    }

    /**
     * 修改个人信息跳转
     * @return
     */
    @RequestMapping("/modify")
    public String modify() {

        return "jsp/zc_xg";
    }



    /**
     * 登陆者退出  只要登陆者退出都走这个映射
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("exitAll")
    public String exitAll(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession(false);
        session.invalidate();
        response.setHeader("Cash-Control","no-cache");
        response.setHeader("Cash-Control","no-store");
        response.setDateHeader("Expires",0);
        response.setHeader("Pragma","no-cache");
        return "jsp/index";
    }
}
