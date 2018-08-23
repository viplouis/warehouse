package com.warehouse.pro.mapper.good;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.good.OutDepod;
import com.warehouse.pro.po.good.OutDepodExample;

public interface OutDepodMapper {
    int countByExample(OutDepodExample example);

    int deleteByExample(OutDepodExample example);

    int deleteByPrimaryKey(Integer outdepodid);

    int insert(OutDepod record);

    int insertSelective(OutDepod record);

    List<OutDepod> selectByExample(OutDepodExample example);

    OutDepod selectByPrimaryKey(Integer outdepodid);

    int updateByExampleSelective(@Param("record") OutDepod record, @Param("example") OutDepodExample example);

    int updateByExample(@Param("record") OutDepod record, @Param("example") OutDepodExample example);

    int updateByPrimaryKeySelective(OutDepod record);

    int updateByPrimaryKey(OutDepod record);
}