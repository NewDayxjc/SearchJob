package SearchJob.service.Impl;

import SearchJob.dao.EmployeeDao;
import SearchJob.pojo.Employee;
import SearchJob.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private  EmployeeDao employeeDao;
    public Employee findEmployeeByName(String empName) {
        return employeeDao.getAllEmployeeByName(empName);
    }

    public Employee findByEmployeeId(Integer id) {
        return employeeDao.findByEmployeeId(id);
    }

    public List<Employee> getAllEmployee() {
        return employeeDao.getAllEmployee();
    }

    public List<Employee> getAllEmployeeByComId(Integer empId) {
        return employeeDao.getAllEmployeeByComId(empId);
    }

    public void InsertEmployee(Employee employee) {
        employeeDao.InsertEmployee(employee);
    }

    public void UpdateEmployee(Employee employee) {
        employeeDao.UpdateEmployee(employee);
    }

    public void DeleteEmployee(Integer empId) {
        employeeDao.DeleteEmployee(empId);
    }
}
