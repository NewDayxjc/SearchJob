package SearchJob.pojo;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
    private Integer mesaId;//简历ID

    private Integer userId;//外键
    private Integer empId;//外键
    private String mesaName;//用户姓名
    private String mesaSex;//用户性别
    private  Integer mesaAge;//用户年龄
    private String eduName;//用户学历 外键
    private String mesaPhone;//联系电话
    private String mesaIntroduce;//个人介绍

    private String mesaWant;//意向公司

    private Date mesaDate;//编写时间
    private Integer compId;//公司外键
    private Integer mesaPower=1;//简历权限 0只对招聘开放 1对所有人开放
    private User user;
    private  Employee employee;
    private Company company;

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCompId() {
        return compId;
    }

    public void setCompId(Integer compId) {
        this.compId = compId;
    }

    public String getMesaName() {
        return mesaName;
    }

    public void setMesaName(String mesaName) {
        this.mesaName = mesaName;
    }

    public String getMesaSex() {
        return mesaSex;
    }

    public void setMesaSex(String mesaSex) {
        this.mesaSex = mesaSex;
    }

    public Integer getMesaAge() {
        return mesaAge;
    }

    public void setMesaAge(Integer mesaAge) {
        this.mesaAge = mesaAge;
    }

    public String getEduName() {
        return eduName;
    }

    public void setEduName(String eduName) {
        this.eduName = eduName;
    }

    public String getMesaPhone() {
        return mesaPhone;
    }

    public void setMesaPhone(String mesaPhone) {
        this.mesaPhone = mesaPhone;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getMesaIntroduce() {
        return mesaIntroduce;
    }

    public void setMesaIntroduce(String mesaIntroduce) {
        this.mesaIntroduce = mesaIntroduce;
    }

    public String getMesaWant() {
        return mesaWant;
    }

    public void setMesaWant(String mesaWant) {
        this.mesaWant = mesaWant;
    }

    public Date getMesaDate() {
        return mesaDate;
    }

    public void setMesaDate(Date mesaDate) {
        this.mesaDate = mesaDate;
    }

    public Integer getMesaId() {
        return mesaId;
    }

    public void setMesaId(Integer mesaId) {
        this.mesaId = mesaId;
    }

    public Integer getMesaPower() {
        return mesaPower;
    }

    public void setMesaPower(Integer mesaPower) {
        this.mesaPower = mesaPower;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mesaId=" + mesaId +
                ", mesaSex='" +
                ", eduName='" + eduName + '\'' +
                ", mesaIntroduce='" + mesaIntroduce + '\'' +
                ", mesaAge='" +
                ", mesaWant='" + mesaWant + '\'' +
                ", measDate=" + mesaDate +
                ", mesaPower=" + mesaPower +
                '}';
    }
}
