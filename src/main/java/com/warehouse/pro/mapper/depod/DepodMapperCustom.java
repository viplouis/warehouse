package com.warehouse.pro.mapper.depod;

import java.util.List;

import com.warehouse.pro.po.depod.DepodCustom;
import com.warehouse.pro.po.depod.DepodExampleCustom;

public interface DepodMapperCustom {
	
	Integer findCount(DepodExampleCustom exampleCustom);

	List<DepodCustom> findListByPage(DepodExampleCustom exampleCustom);
}
