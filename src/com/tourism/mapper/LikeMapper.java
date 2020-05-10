package com.tourism.mapper;

import com.tourism.pojo.Like;
import com.tourism.pojo.LikeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LikeMapper {
    int countByExample(LikeExample example);

    int deleteByExample(LikeExample example);

    int deleteByPrimaryKey(Integer collId);

    int insert(Like record);

    int insertSelective(Like record);

    List<Like> selectByExample(LikeExample example);

    Like selectByPrimaryKey(Integer collId);

    int updateByExampleSelective(@Param("record") Like record, @Param("example") LikeExample example);

    int updateByExample(@Param("record") Like record, @Param("example") LikeExample example);

    int updateByPrimaryKeySelective(Like record);

    int updateByPrimaryKey(Like record);
    
    /*
     * 自定义方法
     */
    void addLike(@Param("userId")int userId,@Param("attId")int attId);
    List<Like> selectUser(int userId);
    List<Integer> selectAttId(int attId);
    List<Integer>selectUserId(int userId);
    void deletetAttId(int attId);
}