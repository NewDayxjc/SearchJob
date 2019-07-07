package SearchJob.service;

import SearchJob.pojo.Company;
import SearchJob.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    /**
     * 通过用户账户名和密码查询用户
     * @param userAccount
     * @param userPwd
     * @return
     */
    public User login(String userAccount,String userPwd);

    /**
     * 根据用户名查询
     * @param userName
     * @return
     */
    public User findUserByName(String userName);

    /**
     * 添加用户
     * @param user
     */
    void InsertUser(User user);

    /**
     * 根据ID查找
     * @param id
     * @return
     */
    User findById(Integer id);

    /**
     *更新
     * @return
     */
    public void UpdateUserPwd(User user);


    public List<User>  getAllUser();

}
