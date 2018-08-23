package com.warehouse.pro.mapper.good;

import java.util.List;

import com.warehouse.pro.po.good.OutDepodCustom;
import com.warehouse.pro.po.good.OutDepodExampleCustom;

public interface OutDepodMapperCustom {
	Integer findCount(OutDepodExampleCustom exampleCustom);

	List<OutDepodCustom> findListByPage(OutDepodExampleCustom exampleCustom);
}