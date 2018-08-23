package com.warehouse.pro.mapper.good;

import java.util.List;

import com.warehouse.pro.po.good.GoodCustom;
import com.warehouse.pro.po.good.GoodExampleCustom;

public interface GoodMapperCustom {
	Integer findCount(GoodExampleCustom exampleCustom);

	List<GoodCustom> findListByPage(GoodExampleCustom exampleCustom);
}