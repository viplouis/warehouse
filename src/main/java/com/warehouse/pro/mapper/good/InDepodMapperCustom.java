package com.warehouse.pro.mapper.good;

import java.util.List;

import com.warehouse.pro.po.good.InDepodCustom;
import com.warehouse.pro.po.good.InDepodExampleCustom;

public interface InDepodMapperCustom {
	Integer findCount(InDepodExampleCustom exampleCustom);

	List<InDepodCustom> findListByPage(InDepodExampleCustom exampleCustom);
}