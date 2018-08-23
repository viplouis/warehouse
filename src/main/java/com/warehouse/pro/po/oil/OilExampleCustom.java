package com.warehouse.pro.po.oil;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OilExampleCustom extends OilExample{
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