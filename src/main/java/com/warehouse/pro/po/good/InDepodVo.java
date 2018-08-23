package com.warehouse.pro.po.good;

import java.util.Date;


public class InDepodVo {
	private InDepod indepod;
	private InDepodCustom indepodCustom;
	private Integer currentPage=1;
	private Date beginTime;
	private Date endTime;
	
	public InDepod getIndepod() {
		return indepod;
	}
	public void setIndepod(InDepod indepod) {
		this.indepod = indepod;
	}
	public InDepodCustom getIndepodCustom() {
		return indepodCustom;
	}
	public void setIndepodCustom(InDepodCustom indepodCustom) {
		this.indepodCustom = indepodCustom;
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