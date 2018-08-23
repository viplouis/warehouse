package com.warehouse.pro.service.good;

import com.warehouse.pro.po.good.InDepod;
import com.warehouse.pro.po.good.InDepodVo;
import com.warehouse.pro.util.PageBean;

public interface InDepodService {
	int insertSelective(InDepod record);
	PageBean findListByPage(String beginDate,String endDate,String goodname,InDepodVo indepod);
}
