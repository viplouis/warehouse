package com.warehouse.pro.service.oil;

import java.util.List;

import com.warehouse.pro.po.oil.Oil;
import com.warehouse.pro.po.oil.OilCustom;
import com.warehouse.pro.po.oil.OilExample;
import com.warehouse.pro.po.oil.OilVo;
import com.warehouse.pro.util.PageBean;


public interface OilService {
/*	List<OilVo> selectVoByEXample(OilExample example);*/
	
	int countByExample(OilExample example);
	
	int deleteByPrimaryKey(Integer id);
	
	int insertSelective(Oil record);
	
	OilCustom selectByPrimaryKey(Integer id);
	
	List<Oil> selectByEXample(OilExample example);
	
	public void update(Integer id, OilCustom oilCustom) throws Exception;

	PageBean findListByPage(OilVo oilVo) ;


}
