package com.warehouse.pro.service.good;

import com.warehouse.pro.po.good.OutDepod;
import com.warehouse.pro.po.good.OutDepodVo;
import com.warehouse.pro.util.PageBean;

public interface OutDepodService {
	int insertSelective(OutDepod record);
	PageBean findListByPage(String beginDate,String endDate,String goodname,OutDepodVo outdepodVo);
}
