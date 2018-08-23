package com.warehouse.pro.po.depod;

import java.util.Date;

public class DepodVo {
	private Depod depod;
	private DepodCustom depodCustom;
	private Integer currentPage=1;
	private Date beginTime;
	private Date endTime;
	public Depod getDepod() {
		return depod;
	}
	public void setDepod(Depod depod) {
		this.depod = depod;
	}
	public DepodCustom getDepodCustom() {
		return depodCustom;
	}
	public void setDepodCustom(DepodCustom depodCustom) {
		this.depodCustom = depodCustom;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
}
