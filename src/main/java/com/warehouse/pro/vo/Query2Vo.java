package com.warehouse.pro.vo;

public class Query2Vo {

	private String goodsName;
	private String goodsModel;
	private double goodsPrice;
	private String goodsProduct;
	private int goodsNumber;
	private double amount;

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsModel() {
		return goodsModel;
	}

	public void setGoodsModel(String goodsModel) {
		this.goodsModel = goodsModel;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsProduct() {
		return goodsProduct;
	}

	public void setGoodsProduct(String goodsProduct) {
		this.goodsProduct = goodsProduct;
	}

	public int getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "QueryVo2 [goodsName=" + goodsName + ", goodsModel=" + goodsModel + ", goodsNumber=" + goodsNumber
				+ ", goodsPrice=" + goodsPrice + ", goodsProduct=" + goodsProduct + ", amount=" + amount + "]";
	}

}
