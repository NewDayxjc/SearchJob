package SearchJob.service.Impl;

import SearchJob.dao.AdminDao;
import SearchJob.pojo.Admin;
import SearchJob.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    public Admin login(String adminName, String adminPwd) {
        return adminDao.findByAdminNameAndPassWord(adminName,adminPwd);
    }
}
