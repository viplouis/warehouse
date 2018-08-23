package com.warehouse.pro.service.base;

import java.util.List;

import com.warehouse.pro.po.base.Goods;
import com.warehouse.pro.po.base.GoodsExample;
import com.warehouse.pro.util.PageBean;

public interface GoodsService {
	List<Goods> selectByExample(GoodsExample example);
	Goods selectById(int goodsid);
	void selectByPage(PageBean paging, String key);
	int insert(Goods goods);
	int update(Goods goods);
	int delete(int goodsid);
}
