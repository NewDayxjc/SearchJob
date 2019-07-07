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

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CompanyController {
    @Autowired
    private CompanyService companyService;
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("getAllCompany")
    public String  getAllCompany(HttpSession session){
        List<Company> companies=companyService.getAllCompany();

        session.setAttribute("companies",companies);

        return "redirect:background/member-list.jsp";
    }
    @RequestMapping(value = "/companyLogin",method= RequestMethod.GET)
    public ModelAndView login(String compAccount, String compPwd, ModelAndView mv, HttpSession session) {
        Company company=companyService.login(compAccount,compPwd);
        if(company!=null){
            if(company.getCompPower()==1) {
                Integer compId=company.getCompId();
                session.setAttribute("company",company);
                List<Employee> employees=employeeService.getAllEmployeeByComId(compId);
                session.setAttribute("employees",employees);
                mv.setViewName("jsp/index_company");
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
     * @param company
     * @return
     */
    @RequestMapping(value = "/companyInsert",method = RequestMethod.POST)
    public ModelAndView insert(Company company,ModelAndView mv){
        Integer id=company.getCompId();
        //判断ID是否为空
        if(companyService.findById(id)==null){
            if(company.getCompName()==null||company.getCompName().equals("")){
                mv.addObject("message","公司名不能为空");
                mv.setViewName("jsp/companyRegister");
            }else if(company.getCompAccount()==null||company.getCompAccount().equals("")){
                mv.addObject("message","账户名不能为空");
                mv.setViewName("/jsp/companyRegister");
            }else if(company.getCompPwd()==null||company.getCompPwd().equals("")){
                mv.addObject("message","密码不能为空");
                mv.setViewName("jsp/companyRegister");
            }else if(company.getCompArea()==null||company.getCompArea().equals("")){
                mv.addObject("message","公司地点不能为空");
                mv.setViewName("jsp/companyRegister");
            }else {
                companyService.InsertCompany(company);
                mv.setViewName("jsp/index");
            }
        }else {
            mv.setViewName("redirect:/jsp/companyRegister.jsp");
        }
        return mv;
    }

    /**
     * 注册跳转
     * @return
     */
    @RequestMapping("/companyRegister")
    public String companyRegister(){
        return "jsp/companyRegister";
    }

    /**
     * 更新企业账户密码
     * @param compId
     * @param company
     * @param mv
     * @param compAccount
     * @param compPwd
     * @param NewPwd
     * @param NewPwdAgain
     * @return
     */
    @RequestMapping(value = "/updateCompanyPwd")
    public ModelAndView updateCompanyPwd( @RequestParam("compId")Integer compId, Company company, ModelAndView mv,
                                      String compAccount,String compPwd,String NewPwd,String NewPwdAgain){

        company=companyService.findById(compId);
            if(company.getCompAccount().equals(compAccount) && company.getCompPwd().equals(compPwd)){
                if(NewPwd.equals(NewPwdAgain)){
                    company.setCompPwd(NewPwd);
                    companyService.UpdateCompanyPwd(company);
                    mv.setViewName("jsp/index");
                }else{
                    mv.addObject("message","两次密码不一致");
                    mv.setViewName("jsp/companyModifyPwd");
                }
            }else{
                mv.addObject("message","账号或密码输入错误,请重新输入");
                mv.setViewName("jsp/companyModifyPwd");
            }
        return mv;
    }
    @RequestMapping("/UpdateCompany")
    public ModelAndView  UpdateCompany(@RequestParam("compId") Integer compId,HttpSession session,ModelAndView mv,String compName,String compArea,String compManager){
        Company company=companyService.findById(compId);
        session.setAttribute("company",company);
        if(compName==null || compName.equals("")){
             mv.addObject("message","公司名不能为空");
             mv.setViewName("jsp/companyModify");
        }else if(compArea==null || compArea.equals("")){
            mv.addObject("message","公司地址不能为空");
            mv.setViewName("jsp/companyModify");
        }else if(compManager==null || compManager.equals("")){
            mv.addObject("message","公司法人不能为空");
            mv.setViewName("jsp/companyModify");
        }else {

            company.setCompName(compName);
            company.setCompArea(compArea);
            company.setCompManager(compManager);
            companyService.UpdateCompany(company);
            mv.setViewName("jsp/index");
        }
        return mv;
    }

    /**
     * 跳转修改界面
     * @return
     */
    @RequestMapping("/companyModify")
    public String companyModify() {

        return "jsp/companyModify";
    }
    @RequestMapping("companyModifyPwd")
    public String companyModifyPwd(){
        return "jsp/companyModifyPwd";
    }
}
