package com.warehouse.pro.service.base;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.base.Areainfo;
import com.warehouse.pro.po.base.AreainfoExample;

public interface AreaService {
	  int countByExample(AreainfoExample example);

	    int deleteByExample(AreainfoExample example);

	    int deleteByPrimaryKey(Integer areaid);

	    int insert(Areainfo record);

	    int insertSelective(Areainfo record);

	    List<Areainfo> selectByExample(AreainfoExample example);

	    Areainfo selectByPrimaryKey(Integer areaid);

	    int updateByExampleSelective(@Param("record") Areainfo record, @Param("example") AreainfoExample example);

	    int updateByExample(@Param("record") Areainfo record, @Param("example") AreainfoExample example);

	    int updateByPrimaryKeySelective(Areainfo record);

	    int updateByPrimaryKey(Areainfo record);
}
