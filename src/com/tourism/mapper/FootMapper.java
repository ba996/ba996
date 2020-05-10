package com.tourism.mapper;

import com.tourism.pojo.Foot;
import com.tourism.pojo.FootExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FootMapper {
    int countByExample(FootExample example);

    int deleteByExample(FootExample example);

    int deleteByPrimaryKey(Integer footId);

    int insert(Foot record);

    int insertSelective(Foot record);

    List<Foot> selectByExample(FootExample example);

    Foot selectByPrimaryKey(Integer footId);

    int updateByExampleSelective(@Param("record") Foot record, @Param("example") FootExample example);

    int updateByExample(@Param("record") Foot record, @Param("example") FootExample example);

    int updateByPrimaryKeySelective(Foot record);

    int updateByPrimaryKey(Foot record);
}