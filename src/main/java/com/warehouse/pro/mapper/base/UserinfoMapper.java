package com.warehouse.pro.mapper.base;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.warehouse.pro.po.base.Userinfo;
import com.warehouse.pro.po.base.UserinfoExample;
import com.warehouse.pro.vo.UserVo;

public interface UserinfoMapper {
    int countByExample(UserinfoExample example);

    int deleteByExample(UserinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);

    List<Userinfo> selectByExample(UserinfoExample example);

    Userinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Userinfo record, @Param("example") UserinfoExample example);

    int updateByExample(@Param("record") Userinfo record, @Param("example") UserinfoExample example);

    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);
    
    List<Userinfo> selectByPage(@Param("startPos") Integer startPos,@Param("pageSize") Integer pageSize,@Param("key") String key);
    List<UserVo> selectVoByExample(UserinfoExample example);
}