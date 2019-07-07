package SearchJob.dao;

import SearchJob.pojo.Employee;
import SearchJob.pojo.Message;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageDao {
    /**
     * 按empName查询
     */
    public Message findMessageByName(String mesaName);
    /**
     * 根据ID查询
     * @param id
     * @return
     */
    Message findByMessageId(Integer id);
    /**
     * 全查
     * @return
     */
    List<Message> getAllMessage();

    /**
     * 根据企业下招聘Id全查
     * @return
     */
    List<Message> getMessageByEmployeeId(Integer empId);

    /**
     * 根据用户Id查询用户所投递简历
     * @param userId
     * @return
     */
    List<Message> getAllMessageByUserId(Integer userId);
    /**
     * 添加
     * @param message
     */
    void InsertMessage(Message message);
    /**
     * 更新
     */
    void UpdateMessage(Message message);
    /**
     * 删除
     */
    void DeleteMessage(Integer mesaId);

    /**
     * 获取Message和Employee所有值
     * @return
     */
    List<Message> getMessageAndEmployee();
}
