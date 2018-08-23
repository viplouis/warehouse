package com.warehouse.pro.po.good;

public class GoodExampleCustom extends GoodExample {
	private Integer beginRow;
	private Integer pageSize;
	public Integer getBeginRow() {
		return beginRow;
	}
	public void setBeginRow(Integer beginRow) {
		this.beginRow = beginRow;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
}