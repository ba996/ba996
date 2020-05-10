package com.tourism.mapper;

import com.tourism.pojo.Detail;
import com.tourism.pojo.DetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DetailMapper {
    int countByExample(DetailExample example);

    int deleteByExample(DetailExample example);

    int deleteByPrimaryKey(Integer lineId);

    int insert(Detail record);

    int insertSelective(Detail record);

    List<Detail> selectByExample(DetailExample example);

    Detail selectByPrimaryKey(Integer lineId);

    int updateByExampleSelective(@Param("record") Detail record, @Param("example") DetailExample example);

    int updateByExample(@Param("record") Detail record, @Param("example") DetailExample example);

    int updateByPrimaryKeySelective(Detail record);

    int updateByPrimaryKey(Detail record);
}