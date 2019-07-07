package SearchJob.pojo;

import java.io.Serializable;
import java.util.List;

public class Education implements Serializable {
    private Integer eduId;//学历ID
    private String eudName;//学历名
    private List<Employee> employees;
    private List<User> users;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }

    public Integer getEduId() {
        return eduId;
    }

    public void setEduId(Integer eduId) {
        this.eduId = eduId;
    }

    public String getEudName() {
        return eudName;
    }

    public void setEudName(String eudName) {
        this.eudName = eudName;
    }

    @Override
    public String toString() {
        return "Education{" +
                "eduId=" + eduId +
                ", eudName='" + eudName + '\'' +
                '}';
    }
}
