package SearchJob.service;

import SearchJob.pojo.Company;


import java.util.List;

public interface CompanyService {
    /**
     * 通过企业用户名和密码查询企业
     * @param compAccount
     * @param compPwd
     * @return
     */
    public Company login(String compAccount, String compPwd);

    /**
     * 根据企业名查询
     * @param compName
     * @return
     */
    public Company findCompanyByCompName(String compName);

    /**
     * 添加用户
     * @param company
     */
    void InsertCompany(Company company);

    /**
     * 根据ID查找
     * @param id
     * @return
     */
    Company findById(Integer id);

    /**
     *更新
     * @return
     */
    public void UpdateCompany(Company company);

    /**
     * 更新密码
     * @param company
     */

    public  void UpdateCompanyPwd(Company company);
    public List<Company>  getAllCompany();

}
