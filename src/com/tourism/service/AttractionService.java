package com.tourism.service;

import java.util.List;

import com.tourism.pojo.Attraction;
import com.tourism.pojo.Detail;
import com.tourism.pojo.Img;
import com.tourism.pojo.Line;

public interface AttractionService {
//景点增、删、改、查
void addAttraction(Attraction attraction);
void deleteAttraction(int attId);
void updateAttraction(Attraction attraction);
List<Attraction> selectAll();
Attraction selectByAttId(int attId);
List<Attraction> selectByName(String attName);
List<Attraction> selectFuzzy(String attName);//模糊查询
List<Attraction> selectByCity(String attAddress);//根据城市模糊查询
void updateGrade(int attId,float grade);//更新景点分数
//线路增删改查
void addLine(Line line);
void deleteLine(int lineId);
void deleteByAttId(int attId);
void updateLine(Line line);
List<Line> selectAll(int attId);
Line selectByLineId(int lineId);

//线路详细信息增删改查
void addDetail(Detail detail);
void deleteDetail(int lineId);
void updateDetail(Detail detail);
Detail selectBylineId(int lineId);

//景点风景
void addImg(Img img);
void deleteImg(int imgId);
List<Img> selectByAtt(int attId);
}
