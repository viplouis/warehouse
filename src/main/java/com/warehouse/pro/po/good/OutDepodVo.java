package com.warehouse.pro.po.good;

import java.util.Date;


public class OutDepodVo {
	private OutDepod outdepod;
	private OutDepodCustom outdepodCustom;
	private Integer currentPage=1;
	private Date beginTime;
	private Date endTime;
	
	public OutDepod getOutdepod() {
		return outdepod;
	}
	public void setOutdepod(OutDepod outdepod) {
		this.outdepod = outdepod;
	}
	public OutDepodCustom getOutdepodCustom() {
		return outdepodCustom;
	}
	public void setOutdepodCustom(OutDepodCustom outdepodCustom) {
		this.outdepodCustom = outdepodCustom;
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