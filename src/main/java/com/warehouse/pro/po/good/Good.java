package com.warehouse.pro.po.good;

import java.math.BigDecimal;

public class Good {
    private Integer goodid;//商品ID

    private String goodnum;//商品编号

    private String goodname;//商品名

    private String goodmodel;//商品型号

    private String goodproducer;//商品生产商

    private String unit;//单位

    private BigDecimal price;//单价

    private Integer stock;//库存

    private Integer warning;//预警值

    private Integer depodid;//仓库ID

    private String depodnum;//仓库编号

    private String spare1;

    private String spare2;

    private String spare3;

    private String spare4;

    private String spare5;

    private String remark;

    public Integer getGoodid() {
        return goodid;
    }

    public void setGoodid(Integer goodid) {
        this.goodid = goodid;
    }

    public String getGoodnum() {
        return goodnum;
    }

    public void setGoodnum(String goodnum) {
        this.goodnum = goodnum == null ? null : goodnum.trim();
    }

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname == null ? null : goodname.trim();
    }

    public String getGoodmodel() {
        return goodmodel;
    }

    public void setGoodmodel(String goodmodel) {
        this.goodmodel = goodmodel == null ? null : goodmodel.trim();
    }

    public String getGoodproducer() {
        return goodproducer;
    }

    public void setGoodproducer(String goodproducer) {
        this.goodproducer = goodproducer == null ? null : goodproducer.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getWarning() {
        return warning;
    }

    public void setWarning(Integer warning) {
        this.warning = warning;
    }

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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	@Override
	public String toString() {
		return "Good [goodid=" + goodid + ", goodnum=" + goodnum + ", goodname=" + goodname + ", goodmodel=" + goodmodel
				+ ", goodproducer=" + goodproducer + ", unit=" + unit + ", price=" + price + ", stock=" + stock
				+ ", warning=" + warning + ", depodid=" + depodid + ", depodnum=" + depodnum + ", spare1=" + spare1
				+ ", spare2=" + spare2 + ", spare3=" + spare3 + ", spare4=" + spare4 + ", spare5=" + spare5
				+ ", remark=" + remark + "]";
	}
    
}