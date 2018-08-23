package com.warehouse.pro.po.oil;

import java.util.Date;

public class Oil {
    private Integer oilId;

    private String oilCard;

    private String oilAddress;

    private String oilLicence;

    private Double oilMoney;

    private Date time;

    private String oilUser;

    public Integer getOilId() {
        return oilId;
    }

    public void setOilId(Integer oilId) {
        this.oilId = oilId;
    }

    public String getOilCard() {
        return oilCard;
    }

    public void setOilCard(String oilCard) {
        this.oilCard = oilCard == null ? null : oilCard.trim();
    }

    public String getOilAddress() {
        return oilAddress;
    }

    public void setOilAddress(String oilAddress) {
        this.oilAddress = oilAddress == null ? null : oilAddress.trim();
    }

    public String getOilLicence() {
        return oilLicence;
    }

    public void setOilLicence(String oilLicence) {
        this.oilLicence = oilLicence == null ? null : oilLicence.trim();
    }

    public Double getOilMoney() {
        return oilMoney;
    }

    public void setOilMoney(Double oilMoney) {
        this.oilMoney = oilMoney;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getOilUser() {
        return oilUser;
    }

    public void setOilUser(String oilUser) {
        this.oilUser = oilUser == null ? null : oilUser.trim();
    }
}