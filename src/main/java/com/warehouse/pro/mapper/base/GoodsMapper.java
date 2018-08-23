package com.warehouse.pro.mapper.base;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.base.Goods;
import com.warehouse.pro.po.base.GoodsExample;
import com.warehouse.pro.util.PageBean;

public interface GoodsMapper {
    int countByExample(GoodsExample example);

    int deleteByExample(GoodsExample example);

    int deleteByPrimaryKey(Integer goodsid);

    int insert(Goods record);

    int insertSelective(Goods record);

    List<Goods> selectByExample(GoodsExample example);

    Goods selectByPrimaryKey(Integer goodsid);

    int updateByExampleSelective(@Param("record") Goods record, @Param("example") GoodsExample example);

    int updateByExample(@Param("record") Goods record, @Param("example") GoodsExample example);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

	List<Goods> selectByPage(@Param("startPos") Integer startPos,@Param("pageSize") Integer pageSize,@Param("key") String key);
}