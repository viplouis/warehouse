package com.warehouse.pro.service.good;

import java.util.List;

import com.warehouse.pro.po.good.Good;
import com.warehouse.pro.po.good.GoodExample;
import com.warehouse.pro.po.good.GoodVo;
import com.warehouse.pro.util.PageBean;

public interface GoodService {
    int countByExample(GoodExample example);

    int deleteByPrimaryKey(Integer id);

    int insertSelective(Good record);

    List<Good> selectByExample(GoodExample example);
    
    Good selectByPrimaryKey(Integer goodid);
    
    Good selectByGood(Good record);
    
    PageBean findListByPage(GoodVo goodVo);
    
    void update(Good good);

	List<Good> selectByExampleQuq(GoodExample example);

	List<Good> selectByExamplezdygood(GoodExample example);
	}

