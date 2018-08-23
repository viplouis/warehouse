package com.warehouse.pro.vo;

public class QueryVo {
	

	private String goodsname;
	private String model;
	private double price;
	private String product;
	private int applynum;


	public int getApplynum() {
		return applynum;
	}

	public void setApplynum(int applynum) {
		this.applynum = applynum;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	private int number;

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "QueryVo [goodsname=" + goodsname + ", model=" + model+ ", number=" + number  + ", price=" + price+ ", product=" + product+"]";
	}

}
