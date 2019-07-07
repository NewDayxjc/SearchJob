package SearchJob.controller;

import SearchJob.pojo.Company;
import SearchJob.pojo.Employee;
import SearchJob.pojo.Message;
import SearchJob.pojo.User;
import SearchJob.service.EmployeeService;
import SearchJob.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class MessageController {

    @Autowired
    private MessageService messageService;
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("MessageInsert")
    public ModelAndView InsertMessage(Integer compId, ModelAndView mv, HttpSession session,
                                      Message message,
                                      Integer userId,//外键
                                      String mesaName,//用户姓名
                                      String mesaSex,//用户性别
                                      Integer mesaAge,//用户年龄
                                      String eduName,//用户学历 外键
                                      String mesaPhone,//联系电话
                                      String mesaIntroduce,//个人介绍
                                      String mesaWant,//意向公司
                                      Date mesaDate//编写时间
                                      ){

        Date date=new Date();
        java.sql.Date date1=new java.sql.Date(date.getTime());
        mesaDate=date1;
        message.setMesaDate(mesaDate);
        if(compId==null ||compId.equals("")){
            mv.addObject("message","公司名未获取");
            mv.setViewName("/jsp/messageInsert");
        }else if(mesaDate==null||mesaDate.equals("")){
            mv.addObject("message","时间不能为空");
            mv.setViewName("/jsp/messageInsert");
        } else {
            messageService.InsertMessage(message);
            mv.addObject("message", "您的简历已投递成功");
            mv.setViewName("jsp/success");
        }
        return mv;
    }

    /**
     * 跳转到简历填写界面
     * @return
     */
    @RequestMapping("ToInsertMessage")
    public String ToInsertMessage(){
        return "jsp/messageInsert";
    }
    @RequestMapping("getMessageByEmployeeId")
    public ModelAndView getMessageByEmployeeId(@RequestParam("empId")Integer empId,HttpSession session, ModelAndView mv){
       List<Message> messages= messageService.getMessageByEmployeeId(empId);
        session.setAttribute("messages",messages);
        mv.setViewName("jsp/messageNews");
        return mv;
    }
    /**
     * 获取个人所投递简历信息
     * @return
     */
    @RequestMapping("/getAllMessageByUserId")
    public ModelAndView getAllMessageByUserId(@RequestParam("userId") Integer userId, HttpSession session, ModelAndView mv){
        List<Message> messages=messageService.getAllMessageByUserId(userId);
        List<Message> messageList=messageService.getMessageAndEmployee();
        session.setAttribute("messageList",messageList);
        session.setAttribute("messages",messages);
        mv.setViewName("jsp/userMessage");
        return  mv;
    }
    /**
     * 进入到个人简历查看看详情界面
     * @param mesaId
     * @param empId
     * @param mv
     * @param session
     * @return
     */
    @RequestMapping("ToUserMessageDetail")
    public ModelAndView ToUserMessageDetail(@RequestParam("mesaId")Integer mesaId,@RequestParam("empId")Integer empId, ModelAndView mv,HttpSession session){
        Message message=messageService.findByMessageId(mesaId);
        Employee employee=employeeService.findByEmployeeId(empId);
        session.setAttribute("message",message);
        session.setAttribute("employee",employee);
        mv.setViewName("jsp/userMessageDetail");
        return mv;
    }
}
