package com.tourism.mapper;

import com.tourism.pojo.User;
import com.tourism.pojo.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer userId);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    /**
     * 自定义方法
     * @author 巴勉 @time 2019/1/22
     */
    //更新余额
    void updateMoney(@Param("userId")int userId,@Param("userMoney")float money);
    //根据ID得到余额
    float getByMoney(int userID);
    //通过账号查找用户
    User findByAccount(String userAccount);
    //更新密码
    void updateUserPassword(@Param("userPassword")String userPassword,@Param("userAccount")String userAccount);
}