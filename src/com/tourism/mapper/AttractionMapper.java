package com.tourism.mapper;

import com.tourism.pojo.Attraction;
import com.tourism.pojo.AttractionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AttractionMapper {
    int countByExample(AttractionExample example);

    int deleteByExample(AttractionExample example);

    int deleteByPrimaryKey(Integer attId);

    int insert(Attraction record);

    int insertSelective(Attraction record);

    List<Attraction> selectByExample(AttractionExample example);

    Attraction selectByPrimaryKey(Integer attId);

    int updateByExampleSelective(@Param("record") Attraction record, @Param("example") AttractionExample example);

    int updateByExample(@Param("record") Attraction record, @Param("example") AttractionExample example);

    int updateByPrimaryKeySelective(Attraction record);

    int updateByPrimaryKey(Attraction record);
    
    /*
     * 自定义方法
     */
    List<Attraction> selectAll();
    List<Attraction> selectByName(String attName);
    List<Attraction> selectFuzzy(String attName);//模糊查询
    List<Attraction> selectByCity(String attAddress);//根据城市模糊查询
    void updateGrade(@Param("attId")int attId,@Param("attGrade")float grade);//更新景点分数
}