package com.warehouse.pro.po.good;

import java.util.Date;

public class OutDepod {
    private Integer outdepodid;

    private Integer goodid;//商品ID

    private String unit;//单位

    private Integer num;//数量

    private Date outdepodtime;//出库时间

    private String usedepartment;//使用部门

    private String responsible;//责任人

    private String depodprincipal;//仓库负责人

    private String spare1;

    private String spare2;

    private String spare3;

    private String spare4;

    private String spare5;

    public Integer getOutdepodid() {
        return outdepodid;
    }

    public void setOutdepodid(Integer outdepodid) {
        this.outdepodid = outdepodid;
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

    public Date getOutdepodtime() {
        return outdepodtime;
    }

    public void setOutdepodtime(Date outdepodtime) {
        this.outdepodtime = outdepodtime;
    }

    public String getUsedepartment() {
        return usedepartment;
    }

    public void setUsedepartment(String usedepartment) {
        this.usedepartment = usedepartment == null ? null : usedepartment.trim();
    }

    public String getResponsible() {
        return responsible;
    }

    public void setResponsible(String responsible) {
        this.responsible = responsible == null ? null : responsible.trim();
    }

    public String getDepodprincipal() {
        return depodprincipal;
    }

    public void setDepodprincipal(String depodprincipal) {
        this.depodprincipal = depodprincipal == null ? null : depodprincipal.trim();
    }

    public String getSpare1() {
        return spare1;
    }

    public void setSpare1(String spare1) {
        this.spare1 = spare1 == null ? null : spare1.trim();
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