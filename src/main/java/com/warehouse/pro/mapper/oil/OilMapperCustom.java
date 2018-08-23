package com.warehouse.pro.mapper.oil;


import java.util.List;

import com.warehouse.pro.po.oil.OilCustom;
import com.warehouse.pro.po.oil.OilExampleCustom;


public interface OilMapperCustom {
	List<OilCustom> findListByPage(OilExampleCustom exampleCustom);
	Integer findCount(OilExampleCustom exampleCustom);
}