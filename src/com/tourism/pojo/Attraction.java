package com.tourism.pojo;

public class Attraction {
    private Integer attId;

    private Integer adminId;

    private String attName;

    private Float attPrice;

    private String attPhoto;

    private String attAddress;

    private String attIntroduce;

    private Float attGrade;

    public Integer getAttId() {
        return attId;
    }

    public void setAttId(Integer attId) {
        this.attId = attId;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAttName() {
        return attName;
    }

    public void setAttName(String attName) {
        this.attName = attName == null ? null : attName.trim();
    }

    public Float getAttPrice() {
        return attPrice;
    }

    public void setAttPrice(Float attPrice) {
        this.attPrice = attPrice;
    }

    public String getAttPhoto() {
        return attPhoto;
    }

    public void setAttPhoto(String attPhoto) {
        this.attPhoto = attPhoto == null ? null : attPhoto.trim();
    }

    public String getAttAddress() {
        return attAddress;
    }

    public void setAttAddress(String attAddress) {
        this.attAddress = attAddress == null ? null : attAddress.trim();
    }

    public String getAttIntroduce() {
        return attIntroduce;
    }

    public void setAttIntroduce(String attIntroduce) {
        this.attIntroduce = attIntroduce == null ? null : attIntroduce.trim();
    }

    public Float getAttGrade() {
        return attGrade;
    }

    public void setAttGrade(Float attGrade) {
        this.attGrade = attGrade;
    }
}