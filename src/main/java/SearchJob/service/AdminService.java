package SearchJob.service;

import SearchJob.pojo.Admin;

public interface AdminService {
    /**
     * 根据用户名和密码判断
     * @param adminName
     * @param adminPwd
     * @return
     */
    public Admin login(String adminName,String adminPwd);
}
