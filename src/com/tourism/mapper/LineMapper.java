package com.tourism.mapper;

import com.tourism.pojo.Line;
import com.tourism.pojo.LineExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LineMapper {
    int countByExample(LineExample example);

    int deleteByExample(LineExample example);

    int deleteByPrimaryKey(Integer lineId);

    int insert(Line record);

    int insertSelective(Line record);

    List<Line> selectByExample(LineExample example);

    Line selectByPrimaryKey(Integer lineId);

    int updateByExampleSelective(@Param("record") Line record, @Param("example") LineExample example);

    int updateByExample(@Param("record") Line record, @Param("example") LineExample example);

    int updateByPrimaryKeySelective(Line record);

    int updateByPrimaryKey(Line record);
    /*
     * 自定义方法
     */
    void deleteByAttId(int attId);
    List<Line> selectAll(int attId);
}