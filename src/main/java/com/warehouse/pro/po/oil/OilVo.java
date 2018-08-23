package com.warehouse.pro.po.oil;



import java.util.Date;

import com.warehouse.pro.po.oil.Oil;
import com.warehouse.pro.util.PageBean;

public class OilVo {
	private Oil oil;
	private OilCustom oilCustom;
	private Integer currentPage=1;
	private String beginTime;
	private String endTime;
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Oil getOil() {
		return oil;
	}
	public void setOil(Oil oil) {
		this.oil = oil;
	}

	public OilCustom getOilCustom() {
		return oilCustom;
	}
	public void setOilCustom(OilCustom oilCustom) {
		this.oilCustom = oilCustom;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
       }
