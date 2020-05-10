package com.tourism.mapper;

import com.tourism.pojo.Evaluation;
import com.tourism.pojo.EvaluationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EvaluationMapper {
    int countByExample(EvaluationExample example);

    int deleteByExample(EvaluationExample example);

    int deleteByPrimaryKey(Integer evaId);

    int insert(Evaluation record);

    int insertSelective(Evaluation record);

    List<Evaluation> selectByExample(EvaluationExample example);

    Evaluation selectByPrimaryKey(Integer evaId);

    int updateByExampleSelective(@Param("record") Evaluation record, @Param("example") EvaluationExample example);

    int updateByExample(@Param("record") Evaluation record, @Param("example") EvaluationExample example);

    int updateByPrimaryKeySelective(Evaluation record);

    int updateByPrimaryKey(Evaluation record);
   
    /*
     * 自定义方法
     */
  //查找用户所有评论
  	List<Evaluation> selectByUserId(int userId);
   //查找景区所有评论
  	List<Evaluation> selectByAttId(int attId);
  	//查找所有评论
	List<Evaluation> selectAll();
}