package SearchJob.controller;

import SearchJob.pojo.Company;
import SearchJob.pojo.Employee;
import SearchJob.service.CompanyService;
import SearchJob.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;


@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private CompanyService companyService;

    @RequestMapping(value = "/EmployeeInsert")
    public ModelAndView EmployeeInsert(Employee employee,ModelAndView mv, HttpSession session, String empName,//招聘名
                                       Integer compId,//外键
                                       String compName,//company下的公司名
                                       String empContent,//招聘信息
                                       Date empDate,
                                       String salary,//薪资
                                       String techName,//技术需求
                                       String empArea,//工作区域
                                       String empPhone,//联系电话
                                       String empPeople,//联系人
                                       String eduName,//学历要求   外键
                                       String empNumber,//招聘人数
                                       String empExperience,//工作经验
                                       String empAge){
        Date date=new Date();
        java.sql.Date date1=new java.sql.Date(date.getTime());
        empDate= date1;

        if(empName==null ||empName.equals("")){
            mv.addObject("message","招聘名不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(compName==null|| compName.equals("")){
            mv.addObject("message","公司名不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(empContent==null|| empContent.equals("")){
            mv.addObject("message","招聘内容不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(salary==null){
            mv.addObject("message","工资不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(techName==null){
            mv.addObject("message","技术需求不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(empArea==null){
            mv.addObject("message","工作地点不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }else if(empPeople==null){
            mv.addObject("message","联系人不能为空");
            mv.setViewName("/jsp/employeeInsert");
        }
        else {
            employee.setEmpDate(empDate);
            session.setAttribute("employee",employee);
            Company company=companyService.findById(compId);
            employeeService.InsertEmployee(employee);
            session.setAttribute("company",company);
            mv.setViewName("redirect:getEmployeeByCompId");
        }
        return mv;
    }

    /**
     * 根据compId查询employee

     * @param session
     * @param mv
     * @return
     */
    @RequestMapping("getEmployeeByCompId")
    public ModelAndView getEmployeeByCompId(Company company, HttpServletRequest request, HttpSession session, ModelAndView mv){
        session=request.getSession(true);
        company=(Company) session.getAttribute("company");
        Integer compId=company.getCompId();
        List<Employee> employees=employeeService.getAllEmployeeByComId(compId);
        session.setAttribute("employees",employees);
        session.setAttribute("company",company);
        mv.setViewName("jsp/index_company");
        return mv;
    }
    /**
     * toInsert
     * @return
     */
    @RequestMapping("/toInsert")
    public String toInsert(){
        return "/jsp/employeeInsert";
    }

    /**
     * 主界面全查
     * @return
     */
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String getAllEmployee(HttpSession session){
        List<Employee> allEmployees=employeeService.getAllEmployee();
        session.setAttribute("allEmployees",allEmployees);
        return "jsp/index";
    }


    /**
     * 更多全查
     * @param session
     * @return
     */
    @RequestMapping("/moreNews")
    public String get(HttpSession session){
        List<Employee> employees=employeeService.getAllEmployee();
        session.setAttribute("employees",employees);
        return "jsp/employeeMoreNews";
    }

    /**
     * 进入招聘信息详情界面
     * @param empId
     * @param session
     * @return
     */
    @RequestMapping("/employeeDetail")
    public String employeeDetail( @RequestParam(value = "empId")Integer empId ,HttpSession session){

        Employee employee=employeeService.findByEmployeeId(empId);
        session.setAttribute("employee",employee);
        return "jsp/employeeNews";
    }
}
