package com.warehouse.pro.mapper.depod;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.depod.Depod;
import com.warehouse.pro.po.depod.DepodExample;

public interface DepodMapper {
    int countByExample(DepodExample example);

    int deleteByExample(DepodExample example);

    int deleteByPrimaryKey(Integer depodid);

    int insert(Depod record);

    int insertSelective(Depod record);

    List<Depod> selectByExample(DepodExample example);

    Depod selectByPrimaryKey(Integer depodid);

    int updateByExampleSelective(@Param("record") Depod record, @Param("example") DepodExample example);

    int updateByExample(@Param("record") Depod record, @Param("example") DepodExample example);

    int updateByPrimaryKeySelective(Depod record);

    int updateByPrimaryKey(Depod record);
}