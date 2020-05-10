package com.tourism.service;

import java.util.List;

import com.tourism.pojo.Evaluation;
//说过的话泼出去的水不存在更新
public interface EvaluationService {
  //添加评论
	void addEva(Evaluation evaluation);
 //删除评论
	void deleteEva(int evaId);
 //查找用户所有评论
	List<Evaluation> selectByUserId(int userId);
 //查找景区所有评论
	List<Evaluation> selectByAttId(int attId);
  	//查找所有评论
	List<Evaluation> selectAll();
}
