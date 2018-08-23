package com.warehouse.pro.po.depod;

import java.util.Date;

public class Depod {
    private Integer depodid;//主键ID

    private String depodnum;//仓库编号

    private String depodname;//仓库名称

    private String depodaddress;//仓库地址

    private String storigetype;//存放类型

    private String principal;//负责人

    private String telphone;//负责人电话号

    private Date createtime;//创建时间

    private String spare1;//备用字段

    private String spare2;

    private String spare3;

    private String spare4;

    public Integer getDepodid() {
        return depodid;
    }

    public void setDepodid(Integer depodid) {
        this.depodid = depodid;
    }

    public String getDepodnum() {
        return depodnum;
    }

    public void setDepodnum(String depodnum) {
        this.depodnum = depodnum == null ? null : depodnum.trim();
    }

    public String getDepodname() {
        return depodname;
    }

    public void setDepodname(String depodname) {
        this.depodname = depodname == null ? null : depodname.trim();
    }

    public String getDepodaddress() {
        return depodaddress;
    }

    public void setDepodaddress(String depodaddress) {
        this.depodaddress = depodaddress == null ? null : depodaddress.trim();
    }

    public String getStorigetype() {
        return storigetype;
    }

    public void setStorigetype(String storigetype) {
        this.storigetype = storigetype == null ? null : storigetype.trim();
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal == null ? null : principal.trim();
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone == null ? null : telphone.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
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
}