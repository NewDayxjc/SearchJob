package SearchJob.dao;

import SearchJob.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 持久化接口
 * 标识dao层
 */
@Repository
public interface UserDao extends BaseDao<User> {
    /**
     * 按userName查询
     */
    public User findUserByName(String userName);

    /**
     * 按用户名和密码查询
     * @param userAccount
     * @param userPwd
     * @return
     * Mybatis传入多个参数时，需要使用@Param
     *注解的两个参数会自动封装成map集合，括号内即为键
     */
    User findByUserAccountAndPassword(@Param("userAccount") String userAccount,@Param("userPwd") String userPwd);

    /**
     * 根据ID查询
     * @param id
     * @return
     */
    User findByUserId(Integer id);
    /**
     * 全查
     * @return
     */
    List<User> getAllUser();

    /**
     * 添加
     * @param user
     */
    void InsertUser(User user);
    /**
     * 更新
     */
    void UpdateUserPwd(User user);
}
