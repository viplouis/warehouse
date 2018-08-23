package com.warehouse.pro.mapper.good;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.good.Good;
import com.warehouse.pro.po.good.GoodExample;

public interface GoodMapper {
    int countByExample(GoodExample example);

    int deleteByExample(GoodExample example);

    int deleteByPrimaryKey(Integer goodid);

    int insert(Good record);

    int insertSelective(Good record);

    List<Good> selectByExampleWithBLOBs(GoodExample example);

    List<Good> selectByExample(GoodExample example);
    
    List<Good> selectByExamplezdygood(GoodExample example);
    
    List<Good> selectByExampleQuq(GoodExample example);

    Good selectByPrimaryKey(Integer goodid);

    int updateByExampleSelective(@Param("record") Good record, @Param("example") GoodExample example);

    int updateByExampleWithBLOBs(@Param("record") Good record, @Param("example") GoodExample example);

    int updateByExample(@Param("record") Good record, @Param("example") GoodExample example);

    int updateByPrimaryKeySelective(Good record);

    int updateByPrimaryKeyWithBLOBs(Good record);

    int updateByPrimaryKey(Good record);

	Good selectByGood(Good record);
}