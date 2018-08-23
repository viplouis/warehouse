package com.warehouse.pro.po.good;

import java.math.BigDecimal;

public class OutDepodCustom extends OutDepod {
	private String goodnum;//商品编号

    private String goodname;//商品名

    private String goodmodel;//商品型号

    private String goodproducer;//商品生产商

    private BigDecimal price;//单价

	public String getGoodnum() {
		return goodnum;
	}

	public void setGoodnum(String goodnum) {
		this.goodnum = goodnum;
	}

	public String getGoodname() {
		return goodname;
	}

	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}

	public String getGoodmodel() {
		return goodmodel;
	}

	public void setGoodmodel(String goodmodel) {
		this.goodmodel = goodmodel;
	}

	public String getGoodproducer() {
		return goodproducer;
	}

	public void setGoodproducer(String goodproducer) {
		this.goodproducer = goodproducer;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
    
}