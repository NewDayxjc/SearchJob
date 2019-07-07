package SearchJob.dao;

import SearchJob.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminDao extends BaseDao<Admin> {
    /**
     *
     */
    public Admin findByAdminNameAndPassWord(@Param("adminName") String adminName,
                                            @Param("adminPwd") String adminPwd);
}
