package com.warehouse.pro.mapper.good;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.good.InDepod;
import com.warehouse.pro.po.good.InDepodExample;

public interface InDepodMapper {
    int countByExample(InDepodExample example);

    int deleteByExample(InDepodExample example);

    int deleteByPrimaryKey(Integer indepodid);

    int insert(InDepod record);

    int insertSelective(InDepod record);

    List<InDepod> selectByExample(InDepodExample example);

    InDepod selectByPrimaryKey(Integer indepodid);

    int updateByExampleSelective(@Param("record") InDepod record, @Param("example") InDepodExample example);

    int updateByExample(@Param("record") InDepod record, @Param("example") InDepodExample example);

    int updateByPrimaryKeySelective(InDepod record);

    int updateByPrimaryKey(InDepod record);
}