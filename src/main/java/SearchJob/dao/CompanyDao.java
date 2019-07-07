package SearchJob.dao;

import SearchJob.pojo.Company;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CompanyDao {
    /**
     * 按compName查询
     */
    public Company findCompanyByName(String compName);

    /**
     *
     * @param compAccount
     * @param compPwd
     * @return
     * Mybatis传入多个参数时，需要使用@Param
     */
    Company findByCompanyAccountAndPassword(@Param("compAccount") String compAccount, @Param("compPwd") String compPwd);

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    Company findByCompanyId(Integer id);
    /**
     * 全查
     * @return
     */
    List<Company> getAllCompany();

    /**
     * 添加
     * @param company
     */
    void InsertCompany(Company company);
    /**
     * 更新
     */
    void UpdateCompany(Company company);
    /**
     * 修改密码
     */
   void UpdateCompanyPwd(Company company);
}
