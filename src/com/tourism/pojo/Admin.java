package com.tourism.pojo;

import java.util.Date;

public class Admin {
    private Integer adminId;

    private String adminAccount;

    private String adminPassword;

    private String adminNickname;

    private String adminPhoto;

    private String adminPhone;

    private String adminEmail;

    private String adminQuestion;

    private String adminAnswer;

    private String adminAddress;

    private Float adminMoney;

    private Date adminRegtime;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminAccount() {
        return adminAccount;
    }

    public void setAdminAccount(String adminAccount) {
        this.adminAccount = adminAccount == null ? null : adminAccount.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminNickname() {
        return adminNickname;
    }

    public void setAdminNickname(String adminNickname) {
        this.adminNickname = adminNickname == null ? null : adminNickname.trim();
    }

    public String getAdminPhoto() {
        return adminPhoto;
    }

    public void setAdminPhoto(String adminPhoto) {
        this.adminPhoto = adminPhoto == null ? null : adminPhoto.trim();
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone == null ? null : adminPhone.trim();
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail == null ? null : adminEmail.trim();
    }

    public String getAdminQuestion() {
        return adminQuestion;
    }

    public void setAdminQuestion(String adminQuestion) {
        this.adminQuestion = adminQuestion == null ? null : adminQuestion.trim();
    }

    public String getAdminAnswer() {
        return adminAnswer;
    }

    public void setAdminAnswer(String adminAnswer) {
        this.adminAnswer = adminAnswer == null ? null : adminAnswer.trim();
    }

    public String getAdminAddress() {
        return adminAddress;
    }

    public void setAdminAddress(String adminAddress) {
        this.adminAddress = adminAddress == null ? null : adminAddress.trim();
    }

    public Float getAdminMoney() {
        return adminMoney;
    }

    public void setAdminMoney(Float adminMoney) {
        this.adminMoney = adminMoney;
    }

    public Date getAdminRegtime() {
        return adminRegtime;
    }

    public void setAdminRegtime(Date adminRegtime) {
        this.adminRegtime = adminRegtime;
    }
}