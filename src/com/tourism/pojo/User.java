package com.tourism.pojo;

import java.util.Date;

public class User {
    private Integer userId;

    private String userAccount;

    private String userPassword;

    private String userNickname;

    private String userPhoto;

    private String userPhone;

    private String userEmail;

    private String userQuestion;

    private String userAnswer;

    private String userAddress;

    private Float userMoney;

    private Integer userPayword;

    private Date userRegtime;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount == null ? null : userAccount.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname == null ? null : userNickname.trim();
    }

    public String getUserPhoto() {
        return userPhoto;
    }

    public void setUserPhoto(String userPhoto) {
        this.userPhoto = userPhoto == null ? null : userPhoto.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserQuestion() {
        return userQuestion;
    }

    public void setUserQuestion(String userQuestion) {
        this.userQuestion = userQuestion == null ? null : userQuestion.trim();
    }

    public String getUserAnswer() {
        return userAnswer;
    }

    public void setUserAnswer(String userAnswer) {
        this.userAnswer = userAnswer == null ? null : userAnswer.trim();
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public Float getUserMoney() {
        return userMoney;
    }

    public void setUserMoney(Float userMoney) {
        this.userMoney = userMoney;
    }

    public Integer getUserPayword() {
        return userPayword;
    }

    public void setUserPayword(Integer userPayword) {
        this.userPayword = userPayword;
    }

    public Date getUserRegtime() {
        return userRegtime;
    }

    public void setUserRegtime(Date userRegtime) {
        this.userRegtime = userRegtime;
    }

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userAccount=" + userAccount + ", userPassword=" + userPassword
				+ ", userNickname=" + userNickname + ", userPhoto=" + userPhoto + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userQuestion=" + userQuestion + ", userAnswer=" + userAnswer
				+ ", userAddress=" + userAddress + ", userMoney=" + userMoney + ", userPayword=" + userPayword
				+ ", userRegtime=" + userRegtime + "]";
	}
    
    
}