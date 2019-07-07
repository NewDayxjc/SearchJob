package SearchJob.service.Impl;

import SearchJob.dao.MessageDao;
import SearchJob.pojo.Employee;
import SearchJob.pojo.Message;
import SearchJob.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MessageServiceImpl  implements MessageService {
    @Autowired
    private MessageDao messageDao;

    public Message findMessageByName(String mesaName) {
        return null;
    }

    public Message findByMessageId(Integer id) {
        return messageDao.findByMessageId(id);
    }

    public List<Message> getAllMessage() {
        return null;
    }

    public List<Message> getMessageByEmployeeId(Integer empId) {
        return messageDao.getMessageByEmployeeId(empId);
    }

    public List<Message> getAllMessageByUserId(Integer userId) {
        return messageDao.getAllMessageByUserId(userId);
    }

    public List<Employee> getAllEmployeeByComName() {
        return null;
    }

    public void InsertMessage(Message message) {
        messageDao.InsertMessage(message);
    }

    public void UpdateMessage(Message message) {

    }

    public void DeleteMessage(Integer mesaId) {

    }

    public List<Message> getMessageAndEmployee() {
        return messageDao.getMessageAndEmployee();
    }
}
