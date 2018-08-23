package com.warehouse.pro.po.good;


public class GoodVo {
	private Good good;
	private GoodCustom goodCustom;
	private Integer currentPage=1;
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	public GoodCustom getGoodCustom() {
		return goodCustom;
	}
	public void setGoodCustom(GoodCustom goodCustom) {
		this.goodCustom = goodCustom;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
}
