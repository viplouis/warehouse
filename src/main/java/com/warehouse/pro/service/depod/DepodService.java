package com.warehouse.pro.service.depod;

import java.util.List;

import com.warehouse.pro.po.depod.Depod;
import com.warehouse.pro.po.depod.DepodCustom;
import com.warehouse.pro.po.depod.DepodExample;
import com.warehouse.pro.po.depod.DepodVo;
import com.warehouse.pro.util.PageBean;

public interface DepodService {

	int countByExample(DepodExample example);
	
	int deleteByPrimaryKey(Integer id);
	
	int insertSelective(Depod record);
	
	Depod selectByPrimaryKey(Integer id);
	
	List<Depod> selectByEXample(DepodExample example);

	PageBean findListByPage(DepodVo depodVo);

	void update(Integer depodId, DepodCustom depodCustom);
}
