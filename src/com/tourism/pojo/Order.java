package com.tourism.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private Integer orderId;

    private Integer userId;

    private Integer attId;

    private Float attPrice;

    private Date orderTime;

    private Integer orderNumber;

    private float orderMoney;

    private String attName;

    private Boolean isEvaluation;

    private Boolean isOrder;

    private Boolean isDelete;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getAttId() {
        return attId;
    }

    public void setAttId(Integer attId) {
        this.attId = attId;
    }

    public Float getAttPrice() {
        return attPrice;
    }

    public void setAttPrice(Float attPrice) {
        this.attPrice = attPrice;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public float getOrderMoney() {
        return orderMoney;
    }

    public void setOrderMoney(Float orderMoney) {
        this.orderMoney = orderMoney;
    }

    public String getAttName() {
        return attName;
    }

    public void setAttName(String attName) {
        this.attName = attName == null ? null : attName.trim();
    }

    public Boolean getIsEvaluation() {
        return isEvaluation;
    }

    public void setIsEvaluation(Boolean isEvaluation) {
        this.isEvaluation = isEvaluation;
    }

    public Boolean getIsOrder() {
        return isOrder;
    }

    public void setIsOrder(Boolean isOrder) {
        this.isOrder = isOrder;
    }

    public Boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Boolean isDelete) {
        this.isDelete = isDelete;
    }
}