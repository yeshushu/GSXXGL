package com.supren.domain.user;

import java.util.Date;

public class UserInfo {
    private String id;

    private Date intstTime;

    private Date birth;

    private String inauguralUnit;

    private String password;

    private String nation;

    private String teacherNumber;

    private String name;

    private Integer sex;

    private String userName;

    private Integer userRole;

    private String poliOutlook;

    private String jobTitle;

    private String departmentNumber;

    private String userPhotos;

    private String delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getIntstTime() {
        return intstTime;
    }

    public void setIntstTime(Date intstTime) {
        this.intstTime = intstTime;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getInauguralUnit() {
        return inauguralUnit;
    }

    public void setInauguralUnit(String inauguralUnit) {
        this.inauguralUnit = inauguralUnit == null ? null : inauguralUnit.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getTeacherNumber() {
        return teacherNumber;
    }

    public void setTeacherNumber(String teacherNumber) {
        this.teacherNumber = teacherNumber == null ? null : teacherNumber.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Integer getUserRole() {
        return userRole;
    }

    public void setUserRole(Integer userRole) {
        this.userRole = userRole;
    }

    public String getPoliOutlook() {
        return poliOutlook;
    }

    public void setPoliOutlook(String poliOutlook) {
        this.poliOutlook = poliOutlook == null ? null : poliOutlook.trim();
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle == null ? null : jobTitle.trim();
    }

    public String getDepartmentNumber() {
        return departmentNumber;
    }

    public void setDepartmentNumber(String departmentNumber) {
        this.departmentNumber = departmentNumber == null ? null : departmentNumber.trim();
    }

    public String getUserPhotos() {
        return userPhotos;
    }

    public void setUserPhotos(String userPhotos) {
        this.userPhotos = userPhotos == null ? null : userPhotos.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }
}