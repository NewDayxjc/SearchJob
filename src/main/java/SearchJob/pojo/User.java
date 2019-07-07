package SearchJob.pojo;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;


import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
    private Integer userId;//用户ID
    @NotEmpty
    private String userName;//用户姓名

    private String userAccount;//用户账号
    private String userPwd;//用户密码
    private String userSex;//用户性别
    private  Integer userAge;//用户年龄
    private String eduName;//用户学历 外键
    @NotEmpty(message = "联系电话不能为空")
    @NumberFormat(pattern = "###########")
    private String userPhone;//联系电话
    private Integer userPower=0;//用户权限 1为可用,0为不可用

    private List<Message> messages;

    public String getEduName() {
        return eduName;
    }

    public void setEduName(String eduName) {
        this.eduName = eduName;
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public Integer getUserPower() {
        return userPower;
    }

    public void setUserPower(Integer userPower) {
        this.userPower = userPower;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userAccount='" + userAccount + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userAge=" + userAge +
                ", eduName='" + eduName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userPower=" + userPower +
                '}';
    }
}
