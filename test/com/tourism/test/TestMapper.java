package com.tourism.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tourism.mapper.OrderMapper;
import com.tourism.mapper.UserMapper;
import com.tourism.service.AdminService;
import com.tourism.service.AttractionService;
import com.tourism.service.EvaluationService;
import com.tourism.service.OrderService;
import com.tourism.service.UserService;
import com.tourism.service.likeService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext-*.xml"})
public class TestMapper {
@Autowired
UserMapper UserMapper;
@Autowired
UserService UserService;
@Autowired
OrderService OrderService;
@Autowired
OrderMapper OrderMapper;
@Autowired
likeService likeService;
@Autowired
AttractionService AttractionService;
@Autowired
AdminService AdminService;
@Autowired
EvaluationService EvaluationService;
@Test
public void findById()
{
	
	AttractionService.updateGrade(1, 20);
	//User user=UserService.findByAccount("13618660475");
	//System.out.println(user);
}

}

