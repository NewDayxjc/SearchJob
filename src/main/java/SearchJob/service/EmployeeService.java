package SearchJob.service;

import SearchJob.pojo.Employee;

import java.util.List;

public interface EmployeeService {
    /**
     * 按empName查询
     */
    public Employee findEmployeeByName(String empName);
    /**
     * 根据ID查询
     * @param id
     * @return
     */
    Employee findByEmployeeId(Integer id);
    /**
     * 全查
     * @return
     */
    List<Employee> getAllEmployee();

    /**
     * 根据企业下的公司Id全查
     * @return
     */
    List<Employee> getAllEmployeeByComId(Integer empId);

    /**
     * 添加
     * @param employee
     */
    void InsertEmployee(Employee employee);
    /**
     * 更新
     */
    void UpdateEmployee(Employee employee);
    /**
     * 删除
     */
    void DeleteEmployee(Integer empId);
}
