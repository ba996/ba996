package com.tourism.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.tourism.mapper.EvaluationMapper;
import com.tourism.pojo.Evaluation;
import com.tourism.service.EvaluationService;

@Controller
public class EvaluationServiceImpl implements EvaluationService{
@Autowired
EvaluationMapper EvaluationMapper;
	@Override
	public void addEva(Evaluation evaluation) {
		// TODO Auto-generated method stub
		EvaluationMapper.insertSelective(evaluation);
	}

	@Override
	public void deleteEva(int evaId) {
		// TODO Auto-generated method stub
		EvaluationMapper.deleteByPrimaryKey(evaId);
	}

	@Override
	public List<Evaluation> selectByUserId(int userId) {
		// TODO Auto-generated method stub
		return EvaluationMapper.selectByUserId(userId);
	}

	@Override
	public List<Evaluation> selectByAttId(int attId) {
		// TODO Auto-generated method stub
		return EvaluationMapper.selectByAttId(attId);
	}

	@Override
	public List<Evaluation> selectAll() {
		// TODO Auto-generated method stub
		return EvaluationMapper.selectAll();
	}

}
