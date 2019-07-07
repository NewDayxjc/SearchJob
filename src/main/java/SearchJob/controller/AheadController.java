package SearchJob.controller;

import SearchJob.pojo.Employee;
import SearchJob.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.List;

@Scope("singleton")
@Controller
public class AheadController implements HttpSessionListener {

    @Autowired
    private EmployeeService employeeService;
    static {
    System.out.print("Hello");
    }
   public HttpSession session;

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {

    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        List<Employee> employees=employeeService.getAllEmployee();
        session.setAttribute("employees",employees);
        httpSessionEvent.getSession();
    }



}
