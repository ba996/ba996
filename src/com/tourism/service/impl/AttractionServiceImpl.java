package com.tourism.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.tourism.mapper.AttractionMapper;
import com.tourism.mapper.DetailMapper;
import com.tourism.mapper.ImgMapper;
import com.tourism.mapper.LineMapper;
import com.tourism.pojo.Attraction;
import com.tourism.pojo.Detail;
import com.tourism.pojo.Img;
import com.tourism.pojo.Line;
import com.tourism.service.AttractionService;

@Controller
public class AttractionServiceImpl implements AttractionService{
@Autowired
AttractionMapper attractionMapper;
@Autowired
LineMapper LineMapper;
@Autowired
DetailMapper DetailMapper;
@Autowired
ImgMapper ImgMapper;
	@Override
	public void addAttraction(Attraction attraction) {
		// TODO Auto-generated method stub
		attractionMapper.insertSelective(attraction);
	}

	@Override
	public void deleteAttraction(int attId) {
		// TODO Auto-generated method stub
		deleteByAttId(attId);
		attractionMapper.deleteByPrimaryKey(attId);
	}

	@Override
	public void updateAttraction(Attraction attraction) {
		// TODO Auto-generated method stub
		attractionMapper.updateByPrimaryKeySelective(attraction);
	}

	@Override
	public void addLine(Line line) {
		// TODO Auto-generated method stub
		LineMapper.insertSelective(line);
	}

	@Override
	public void deleteLine(int lineId) {
		// TODO Auto-generated method stub
		deleteDetail(lineId);
		LineMapper.deleteByPrimaryKey(lineId);
	}

	@Override
	public void deleteByAttId(int attId) {
		// TODO Auto-generated method stub
		LineMapper.deleteByAttId(attId);
	}

	@Override
	public void updateLine(Line line) {
		// TODO Auto-generated method stub
		LineMapper.updateByPrimaryKeySelective(line);
	}

	@Override
	public void addDetail(Detail detail) {
		// TODO Auto-generated method stub
		DetailMapper.insertSelective(detail);
	}

	@Override
	public void deleteDetail(int lineId) {
		// TODO Auto-generated method stub
		DetailMapper.deleteByPrimaryKey(lineId);
	}

	@Override
	public void updateDetail(Detail detail) {
		// TODO Auto-generated method stub
		DetailMapper.updateByPrimaryKeySelective(detail);
	}

	@Override
	public List<Attraction> selectAll() {
		// TODO Auto-generated method stub
		return attractionMapper.selectAll();
	}

	@Override
	public Attraction selectByAttId(int attId) {
		// TODO Auto-generated method stub
		return attractionMapper.selectByPrimaryKey(attId);
	}

	@Override
	public List<Attraction> selectByName(String attName) {
		// TODO Auto-generated method stub
		return attractionMapper.selectByName(attName);
	}

	@Override
	public List<Line> selectAll(int attId) {
		// TODO Auto-generated method stub
		return LineMapper.selectAll(attId);
	}

	@Override
	public Line selectByLineId(int lineId) {
		// TODO Auto-generated method stub
		return LineMapper.selectByPrimaryKey(lineId);
	}

	@Override
	public Detail selectBylineId(int lineId) {
		// TODO Auto-generated method stub
		return DetailMapper.selectByPrimaryKey(lineId);
	}

	@Override
	public List<Attraction> selectFuzzy(String attName) {
		// TODO Auto-generated method stub
		return attractionMapper.selectFuzzy(attName);
	}

	@Override
	public List<Attraction> selectByCity(String attAddress) {
		// TODO Auto-generated method stub
		return attractionMapper.selectByCity(attAddress);
	}

	@Override
	public void addImg(Img img) {
		ImgMapper.insertSelective(img);		
	}

	@Override
	public void deleteImg(int imgId) {
		ImgMapper.deleteByPrimaryKey(imgId);
		
	}

	@Override
	public List<Img> selectByAtt(int attId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateGrade(int attId, float grade) {
		// TODO Auto-generated method stub
		attractionMapper.updateGrade(attId, grade);
	}

}
