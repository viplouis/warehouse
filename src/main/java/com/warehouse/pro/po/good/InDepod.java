package com.warehouse.pro.po.good;

import java.util.Date;

public class InDepod {
    private Integer indepodid;

    private Integer goodid;//商品ID

    private String unit;//单位

    private Integer num;//数量

    private Date indepodtime;//入库时间

    private String buyer;//采购人

    private String depodprincipal;//仓库负责人

    private Date spare1;

    private String spare2;

    private String spare3;

    private String spare4;

    private String spare5;

    public Integer getIndepodid() {
        return indepodid;
    }

    public void setIndepodid(Integer indepodid) {
        this.indepodid = indepodid;
    }

    public Integer getGoodid() {
        return goodid;
    }

    public void setGoodid(Integer goodid) {
        this.goodid = goodid;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getIndepodtime() {
        return indepodtime;
    }

    public void setIndepodtime(Date indepodtime) {
        this.indepodtime = indepodtime;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer == null ? null : buyer.trim();
    }

    public String getDepodprincipal() {
        return depodprincipal;
    }

    public void setDepodprincipal(String depodprincipal) {
        this.depodprincipal = depodprincipal == null ? null : depodprincipal.trim();
    }

    public Date getSpare1() {
        return spare1;
    }

    public void setSpare1(Date spare1) {
        this.spare1 = spare1;
    }

    public String getSpare2() {
        return spare2;
    }

    public void setSpare2(String spare2) {
        this.spare2 = spare2 == null ? null : spare2.trim();
    }

    public String getSpare3() {
        return spare3;
    }

    public void setSpare3(String spare3) {
        this.spare3 = spare3 == null ? null : spare3.trim();
    }

    public String getSpare4() {
        return spare4;
    }

    public void setSpare4(String spare4) {
        this.spare4 = spare4 == null ? null : spare4.trim();
    }

    public String getSpare5() {
        return spare5;
    }

    public void setSpare5(String spare5) {
        this.spare5 = spare5 == null ? null : spare5.trim();
    }
}