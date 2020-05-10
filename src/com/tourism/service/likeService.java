package com.tourism.service;

import java.util.List;

import com.tourism.pojo.Like;

public interface likeService {
  void addLike(int userId,int attId);
  void deleteLike(int collId);
  List<Like> selectUser(int userId);
  List<Integer> selectAttId(int attId);
  List<Integer> selectUserId(int userId);
  void deletetAttId(int attId);
}
