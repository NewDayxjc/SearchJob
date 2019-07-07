package SearchJob.dao;

import SearchJob.pojo.Company;
import SearchJob.pojo.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeDao {
    /**
     * 按empName查询
     */
    public Employee getAllEmployeeByName(String empName);
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
     * 根据企业下的公司名全查
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
