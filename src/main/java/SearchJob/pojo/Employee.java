package SearchJob.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Employee implements Serializable {
    private Integer empId;//招聘id
    private  Integer compId;//外键
    private String empName;//招聘名
    private  String empJobName;//职位名
    private String compName;//值取自company下的公司名
    private String empContent;//招聘信息
    private Date empDate;//招聘日期
    private String salary;//薪资
    private String techName;//技术需求
    private String empArea;//工作区域
    private String empPhone;//联系电话
    private String empPeople;//联系人
    private String eduName;//学历要求   外键
    private String empNumber;//招聘人数
    private String empExperience;//工作经验
    private String empAge;//年龄要求

    private Company company;
    private List<Message> messages;

    public List<Message> getMessages() {
        return messages;
    }

    public String getEmpJobName() {
        return empJobName;
    }

    public void setEmpJobName(String empJobName) {
        this.empJobName = empJobName;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public Integer getCompId() {
        return compId;
    }

    public void setCompId(Integer compId) {
        this.compId = compId;
    }

    public int getEmpId() {
        return empId;
    }
    public void setEmpId(int empId) {
        this.empId = empId;
    }
    public String getEmpName() {
        return empName;
    }
    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpContent() {
        return empContent;
    }

    public void setEmpContent(String empContent) {
        this.empContent = empContent;
    }

    public Date getEmpDate() {
        return empDate;
    }
    public void setEmpDate(Date empDate) {
        this.empDate = empDate;
    }
    public String getSalary() {
        return salary;
    }
    public void setSalary(String salary) {
        this.salary = salary;
    }
    public String getTechName() {
        return techName;
    }
    public void setTechName(String techName) {
        this.techName = techName;
    }
    public String getEmpArea() {
        return empArea;
    }
    public void setEmpArea(String empArea) {
        this.empArea = empArea;
    }
    public String getEmpPhone() {
        return empPhone;
    }
    public void setEmpPhone(String empPhone) {
        this.empPhone = empPhone;
    }
    public String getEmpPeople() {
        return empPeople;
    }
    public void setEmpPeople(String empPeople) {
        this.empPeople = empPeople;
    }
    public String getEduName() {
        return eduName;
    }
    public void setEduName(String eduName) {
        this.eduName = eduName;
    }
    public String getEmpNumber() {
        return empNumber;
    }
    public void setEmpNumber(String empNumber) {
        this.empNumber = empNumber;
    }

    public String getEmpExperience() {
        return empExperience;
    }

    public void setEmpExperience(String empExperience) {
        this.empExperience = empExperience;
    }

    public String getEmpAge() {
        return empAge;
    }
    public void setEmpAge(String empAge) {
        this.empAge = empAge;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "empId=" + empId +
                ", empName='" + empName + '\'' +
                ", comName='" + compName + '\'' +
                ", empContent='" + empContent + '\'' +
                ", empDate=" + empDate +
                ", salary='" + salary + '\'' +
                ", techName='" + techName + '\'' +
                ", empArea='" + empArea + '\'' +
                ", empPhone='" + empPhone + '\'' +
                ", empPeople='" + empPeople + '\'' +
                ", eduName='" + eduName + '\'' +
                ", empNumber='" + empNumber + '\'' +
                ", empExperence='" + empExperience + '\'' +
                ", empAge='" + empAge + '\'' +
                '}';
    }
}
