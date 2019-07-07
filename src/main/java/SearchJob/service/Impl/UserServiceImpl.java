package SearchJob.service.Impl;

import SearchJob.dao.UserDao;
import SearchJob.pojo.User;
import SearchJob.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    public User login(String userAccount, String userPwd) {
        return userDao.findByUserAccountAndPassword(userAccount,userPwd);
    }

    public User findUserByName(String userName) {
        return userDao.findUserByName(userName);
    }

    public void InsertUser(User user) {
        userDao.InsertUser(user);
    }

    public User findById(Integer id) {
        return userDao.findByUserId(id);
    }

    public void UpdateUserPwd(User user) {
        userDao.UpdateUserPwd(user);
    }

    public List<User> getAllUser() {
        return userDao.getAllUser();

    }
}
