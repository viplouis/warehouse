package com.warehouse.pro.mapper.oil;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.oil.Oil;
import com.warehouse.pro.po.oil.OilExample;

public interface OilMapper {
    int countByExample(OilExample example);

    int deleteByExample(OilExample example);

    int deleteByPrimaryKey(Integer oilId);

    int insert(Oil record);

    int insertSelective(Oil record);

    List<Oil> selectByExample(OilExample example);

    Oil selectByPrimaryKey(Integer oilId);

    int updateByExampleSelective(@Param("record") Oil record, @Param("example") OilExample example);

    int updateByExample(@Param("record") Oil record, @Param("example") OilExample example);

    int updateByPrimaryKeySelective(Oil record);

    int updateByPrimaryKey(Oil record);
}