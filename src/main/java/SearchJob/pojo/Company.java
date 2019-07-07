package SearchJob.pojo;

import java.io.Serializable;
import java.util.List;

public class Company implements Serializable {
    private Integer compId;//企业用户ID
    private String compName;//企业名
    private String compAccount;//企业登录用户名
    private String compPwd;//企业用户密码
    private String compArea;//公司地址
    private String compManager;//公司负责人
    private  String compIntroduce;//公司介绍
    private Integer compPower=0;//0为不可用,1为可用
    private List<Employee> employees;//公司下的招聘

    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }

    public String getCompIntroduce() {
        return compIntroduce;
    }

    public void setCompIntroduce(String compIntroduce) {
        this.compIntroduce = compIntroduce;
    }

    public Integer getCompId() {
        return compId;
    }

    public void setCompId(Integer compId) {
        this.compId = compId;
    }

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public String getCompAccount() {
        return compAccount;
    }

    public void setCompAccount(String compAccount) {
        this.compAccount = compAccount;
    }

    public String getCompPwd() {
        return compPwd;
    }

    public void setCompPwd(String compPwd) {
        this.compPwd = compPwd;
    }

    public String getCompArea() {
        return compArea;
    }

    public void setCompArea(String compArea) {
        this.compArea = compArea;
    }

    public String getCompManager() {
        return compManager;
    }

    public void setCompManager(String compManager) {
        this.compManager = compManager;
    }

    public Integer getCompPower() {
        return compPower;
    }

    public void setCompPower(Integer compPower) {
        this.compPower = compPower;
    }

    @Override
    public String toString() {
        return "Company{" +
                "compId=" + compId +
                ", compName='" + compName + '\'' +
                ", compAccount='" + compAccount + '\'' +
                ", compPwd='" + compPwd + '\'' +
                ", compArea='" + compArea + '\'' +
                ", compManager='" + compManager + '\'' +
                ", compPower='" + compPower + '\'' +
                '}';
    }
}
