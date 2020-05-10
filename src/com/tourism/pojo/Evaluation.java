package com.tourism.pojo;

import java.util.Date;

public class Evaluation {
    private Integer evaId;

    private String evaContent;

    private Date evaTime;

    private Integer userId;

    private String userNickname;

    private Boolean isAnonymous;

    private Float evaGrade;

    private Integer attId;

    private String evaPhoto;

    public Integer getEvaId() {
        return evaId;
    }

    public void setEvaId(Integer evaId) {
        this.evaId = evaId;
    }

    public String getEvaContent() {
        return evaContent;
    }

    public void setEvaContent(String evaContent) {
        this.evaContent = evaContent == null ? null : evaContent.trim();
    }

    public Date getEvaTime() {
        return evaTime;
    }

    public void setEvaTime(Date evaTime) {
        this.evaTime = evaTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname == null ? null : userNickname.trim();
    }

    public Boolean getIsAnonymous() {
        return isAnonymous;
    }

    public void setIsAnonymous(Boolean isAnonymous) {
        this.isAnonymous = isAnonymous;
    }

    public Float getEvaGrade() {
        return evaGrade;
    }

    public void setEvaGrade(Float evaGrade) {
        this.evaGrade = evaGrade;
    }

    public Integer getAttId() {
        return attId;
    }

    public void setAttId(Integer attId) {
        this.attId = attId;
    }

    public String getEvaPhoto() {
        return evaPhoto;
    }

    public void setEvaPhoto(String evaPhoto) {
        this.evaPhoto = evaPhoto == null ? null : evaPhoto.trim();
    }
}