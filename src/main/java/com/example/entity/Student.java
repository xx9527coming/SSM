package com.example.entity;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Student {
    private Integer stuNO;
    private String name;
    private String sex;
    private String nation;
    private String telephone;
    private String address;
    private String photo;
    private String resume;
    private Date createTime;
    private Date updateTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    // Getters and Setters
    public Integer getStuNO() {
        return stuNO;
    }

    public void setStuNO(Integer stuNO) {
        this.stuNO = stuNO;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}