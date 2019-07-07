package SearchJob.service.Impl;

import SearchJob.dao.CompanyDao;
import SearchJob.dao.Impl.BaseDaoImpl;
import SearchJob.pojo.Company;
import SearchJob.service.CompanyService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CompanyServiceImpl extends BaseDaoImpl<Company> implements CompanyService {

    @Autowired
    private CompanyDao companyDao;

    public Company login(String compAccount, String compPwd) {
        return companyDao.findByCompanyAccountAndPassword(compAccount,compPwd);
    }

    public Company findCompanyByCompName(String compName) {
        return companyDao.findCompanyByName(compName);
    }

    public void InsertCompany(Company company) {
        companyDao.InsertCompany(company);
    }

    public Company findById(Integer id) {
        return companyDao.findByCompanyId(id);
    }

    public void UpdateCompany(Company company) {

        companyDao.UpdateCompany(company);
    }

    public void UpdateCompanyPwd(Company company) {
        companyDao.UpdateCompanyPwd(company);
    }

    public List<Company> getAllCompany() {
        return companyDao.getAllCompany();
    }
}
